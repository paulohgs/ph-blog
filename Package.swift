// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "PhBlog",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "PhBlog",
            targets: ["PhBlog"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
        .package(name: "SplashPublishPlugin", url: "https://github.com/JohnSundell/SplashPublishPlugin", from: "0.1.0")
    ],
    targets: [
        .executableTarget(
            name: "PhBlog",
            dependencies: [
                "Publish",
                "SplashPublishPlugin"
            ]
        )
    ]
)
