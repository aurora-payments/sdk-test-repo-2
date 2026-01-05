// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AriseMobileSdkIos",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AriseMobileSdkIos",
            targets: ["AriseMobileSdkWrapper"]
        ),
    ],
    dependencies: [
        // AriseMobileSdk.framework requires these dependencies
        .package(url: "https://github.com/apple/swift-openapi-runtime.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-http-types.git", from: "1.0.0"),
        // CloudCommerce.framework requires these dependencies
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.8.0"),
        .package(url: "https://github.com/apple/swift-asn1.git", from: "1.2.0"),
        .package(url: "https://github.com/apple/swift-certificates.git", from: "1.0.0"),
    ],
    targets: [
        // Binary target name MUST match the module name inside the framework
        // The framework's module is "AriseMobileSdk" (from PRODUCT_MODULE_NAME)
        // Framework file is named "AriseMobile.xcframework" but module inside is "AriseMobileSdk"
        .binaryTarget(
            name: "AriseMobileSdkIos",
            path: "./libs/AriseMobile.xcframework"
        ),
        .binaryTarget(
            name: "CloudCommerce",
            path: "./libs/CloudCommerce.xcframework"
        ),
        .target(
            name: "AriseMobileSdkWrapper",
            dependencies: [
                "AriseMobileSdk",  // Binary target with module name "AriseMobileSdk"
                "CloudCommerce",   // Binary target with module name "CloudCommerce"
                // AriseMobileSdk requires these dependencies
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                .product(name: "HTTPTypes", package: "swift-http-types"),
                // CloudCommerce requires these dependencies
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "SwiftASN1", package: "swift-asn1"),
                .product(name: "X509", package: "swift-certificates"),
            ],
            path: "Sources/AriseMobileSdkWrapper"
        ),
    ]
)
