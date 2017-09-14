//
//  AppRouter.swift
//  app.luoyu.space
//
//  Created by Luo Yu on 2017-09-07.
//
//

import Foundation
import Kitura
import KituraMarkdown

public struct AppRouter {
	
	// MARK: CREATE
	public static func create() -> Router {
		
		let router = Router()
		
		// Add KituraMarkdown as a TemplatingEngine
		router.add(templateEngine: KituraMarkdown())
		
		// Show default index.html page under ./public folder
		router.all("/", allowPartialMatch: true, middleware: StaticFileServer())
		
		return router
		
	}
}
