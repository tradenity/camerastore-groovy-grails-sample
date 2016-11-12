package tradenity.grails.sample

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller: "shop", action: "index")
        "/products"(controller: "shop", action: "products")
        "/products/$product_id"(controller: "shop", action: "details")
        "/brands/$brand_id"(controller: "shop", action: "brands")
        "/categories/$category_id"(controller: "shop", action: "categories")
        "/cart"(controller: "cart", action: "index")
        "/cart/add"(controller: "cart", action: "add")
        "/cart/remove/$itemId"(controller: "cart", action: "remove")
        "/orders"(controller: "orders", action: "index")
        "/orders/$orderId"(controller: "orders", action: "show")
        "/orders/checkout"(controller: "orders", action: "checkout")
        "/orders/create"(controller: "orders", action: "create")
        "/orders/refund/$orderId"(controller: "orders", action: "refund")
        "/login"(controller: "account", action: "login")
        "/register"(controller: "account", action: "register")
        "/account/create"(controller: "account", action: "create")
        "/intro"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
