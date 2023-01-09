import Vapor

func routes(_ app: Application) throws {
    app.get { req -> EventLoopFuture<View> in
        let vanilla = Cupcake(id: 1, name: "a", description: "b", price: 2)
        let chocolate = Cupcake(id: 2, name: "b", description: "c", price: 4)
        
        
        return try req.view.render("home", ["cupcakes": [vanilla, chocolate]])
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
}
