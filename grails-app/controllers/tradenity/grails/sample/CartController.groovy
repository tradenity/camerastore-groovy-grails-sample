package tradenity.grails.sample

import com.tradenity.sdk.model.LineItem
import com.tradenity.sdk.model.Product

/**
 * Created by joseph
 * on 9/3/16.
 */
class CartController {

    def categoryService
    def shoppingCartService


    def index() {
        [
                categories: categoryService.findAll(),
                cart: shoppingCartService.get()
        ]
    }

    def add(){
        LineItem item = new LineItem(quantity: params.quantity as int , product: new Product(id: params.product))
        try {
            def sc = shoppingCartService.addItem(item)
            render(contentType: "application/json") {
                status "success"
                message "Item added successfully!"
                total sc.total
                count sc.items.size()
            }
        }catch(RuntimeException e){
            render(contentType: "application/json") {
                status "error"
                message e.message
            }
        }
    }

    def remove(){
        try {
            def sc = shoppingCartService.delete(params.itemId)
            render(contentType: "application/json") {
                status "success"
                message "Item removed successfully!"
                total sc.total
                count sc.items.size()
            }
        }catch(RuntimeException e){
            render(contentType: "application/json") {
                status "error"
                message e.message
            }
        }
    }
}
