import Kitura

let router = Router()

router.get("/") {
	request, response, next in
	response.send("<html><body><h2>hello, love</h2></body></html>")
	next()
}

Kitura.addHTTPServer(onPort: 8080, with: router)

Kitura.run()
