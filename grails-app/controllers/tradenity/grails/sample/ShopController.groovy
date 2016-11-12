package tradenity.grails.sample

class ShopController {
    def categoryService
    def shoppingCartService
    def collectionService
    def brandService
    def productService

    def index() {
        [
                cart: shoppingCartService.get(),
                categories: categoryService.findAll(),
                collections: collectionService.findAll()
        ]
    }

    def details() {
        [
                product: productService.findById(params.product_id),
                brands: brandService.findAll(),
                categories: categoryService.findAll(),
                featured: collectionService.findByName("featured"),
                cart: shoppingCartService.get()
        ]
    }

    def products() {
        def products
        if(params.containsKey('query')){
            products = productService.search('title', params.query)
        }else{
            products = productService.findAll()
        }
        [
                products: products,
                brands: brandService.findAll(),
                categories: categoryService.findAll(),
                featured: collectionService.findByName("featured"),
                cart: shoppingCartService.get()
        ]
    }

    def brands() {
        render view: "products", model: [
                products: productService.search(brand: params.brand_id),
                brands: brandService.findAll(),
                categories: categoryService.findAll(),
                featured: collectionService.findByName("featured"),
                cart: shoppingCartService.get()
        ]
    }

    def categories() {
        render view: "products", model:[
                products: productService.search(category: params.category_id),
                brands: brandService.findAll(),
                categories: categoryService.findAll(),
                featured: collectionService.findByName("featured"),
                cart: shoppingCartService.get()
        ]
    }



}
