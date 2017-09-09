// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "app.luoyu.space",
    dependencies: [
		.Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion:1, minor:7),
		.Package(url: "https://github.com/IBM-Swift/Kitura-Markdown.git", majorVersion:0, minor:9),
		.Package(url: "https://github.com/IBM-Swift/Swift-Kuery.git", majorVersion:0, minor:13),
	]
)
