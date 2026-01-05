// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AriseMobileSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AriseMobileSDK",
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
        // IMPORTANT: After rebuilding the framework with PRODUCT_MODULE_NAME = AriseMobileSDK,
        // change this to "AriseMobileSDK" (with capital SDK)
        // Currently the framework module is "AriseMobileSDK" (old build, before PRODUCT_MODULE_NAME was set)
        .binaryTarget(
            name: "AriseMobileSDK",
            path: "./libs/AriseMobileSdk.xcframework"
        ),
        .binaryTarget(
            name: "CloudCommerce",
            path: "./libs/CloudCommerce.xcframework"
        ),
        .target(
            name: "AriseMobileSdkWrapper",
            dependencies: [
                "AriseMobileSDK",  // Binary target with module name "AriseMobileSDK"
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
