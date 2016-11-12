package tradenity.grails.sample

import com.tradenity.sdk.model.Address
import com.tradenity.sdk.model.Customer
import com.tradenity.sdk.model.Order
import com.tradenity.sdk.model.Transaction

class OrdersController {

    def categoryService
    def orderService
    def customerService
    def shoppingCartService

    def springSecurityService

    def index() {
        def user = springSecurityService.principal
        ["orders": orderService.findAllByCustomer(user.toCustomer(), null)]
    }

    def checkout (){
        def user = springSecurityService.principal
        def stripePubKey = grailsApplication.config.getProperty('stripe.publicKey')
        Customer customer = customerService.findByEmail(user.getEmail());
        Order order = new Order(customer: customer, shippingAddress: createAddress(), billingAddress: createAddress());
        ["stripePubKey": stripePubKey, "order": order]
    }

    def create(){
        def user = springSecurityService.principal
        def order = new Order()
        order.customer = user.toCustomer()
        bindData(order, params.order)
        def transaction = orderService.placeOrder(order, params.token)
        redirect(action: 'show', params:['orderId': transaction.order.id])
    }

    def show(){
        ["order": orderService.findById(params.orderId)]
    }

    def refund(){
        orderService.refund(params.orderId);
        redirect(action: 'show', params:['orderId': params.orderId])
    }

    private Address createAddress() {
        return new Address("3290 Hermosillo Place", "", "Washington", "Washington, DC", "20521-3290", "USA");
    }


}
