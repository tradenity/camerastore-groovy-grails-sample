package tradenity.grails.sample

class AccountController {

    def customerService
    def categoryService
    def shoppingCartService

    def springSecurityService

    def login() {
        [categories: categoryService.findAll(),
         cart: shoppingCartService.get()]
    }
    def register() {
        [user: new User(),
         categories: categoryService.findAll(),
         cart: shoppingCartService.get()]
    }

    def create() {
        def u = new User(firstName: params.firstName, lastName: params.lastName, email: params.email,
                username: params.username, password: params.password, confirmPassword: params.confirmPassword
        )
        if(u.valid()){
            def c = customerService.create(u.toCustomer())
            redirect action: "login"
        }else {
            println "invalid"
            render view: "register", model: [user: u,
                                             categories: categoryService.findAll(),
                                             cart: shoppingCartService.get()]
        }
    }
}
