// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AIChatbot",
    defaultLocalization: "en", platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AIChatbot",
            targets: ["AIChatbot"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.4"),
        .package(url: "https://github.com/gkaimakas/SwiftValidators.git", branch: "master"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", from: "6.5.0"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "3.2.2"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "5.15.0")

        
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AIChatbot",
            dependencies: [
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "Starscream", package: "Starscream"),
                .product(name: "SwiftValidators", package: "SwiftValidators"),
                .product(name: "Kingfisher", package: "Kingfisher")

            ],
            resources: []),
        .testTarget(
            name: "AIChatbotTests",
            dependencies: ["AIChatbot"]),
        .binaryTarget(name: "AIChatbotFramework", path: "./Sources/AIChatbot/AIChatbotFramework.xcframework"),
    ]
)
