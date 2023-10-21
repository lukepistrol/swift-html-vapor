// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "swift-html-vapor",
  platforms: [
    .macOS(.v11)
  ],
  products: [
    .library(
      name: "HtmlVaporSupport",
      targets: ["HtmlVaporSupport"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/lukepistrol/swift-html.git", branch: "main"),
    .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
  ],
  targets: [
    .target(
      name: "HtmlVaporSupport",
      dependencies: [
        .product(name: "Html", package: "swift-html"),
        .product(name: "Vapor", package: "vapor"),
      ]
    ),
  ]
)
