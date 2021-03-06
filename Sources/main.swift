import Kitura
import KituraMarkdown

// MARK: - ROUTER

let router = AppRouter.create()

router.get("/name/:name") { request, response, _ in
	let name = request.parameters["name"] ?? ""
	try response.send("Hello \(name)").end()
}


// MARK: - DOCS

// Handle HTTP GET requests to /docs
router.get("/docs") { _, response, next in
	try response.render("/docs/index.md", context: [String:Any]())
	response.status(.OK)
	next()
}

// MARK: - HTTP SERVER
Kitura.addHTTPServer(onPort: 8080, with: router)

// MARK: - RUN APP
Kitura.run()
