// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AriseMobileSdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AriseMobileSdk",
            targets: ["AriseMobileSdk"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession.git", from: "1.0.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.8.0"),
        .package(url: "https://github.com/apple/swift-asn1.git", from: "1.2.0"),
        .package(url: "https://github.com/apple/swift-certificates.git", from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AriseMobileSdkBinary",
            path: "./libs/AriseMobileSdk.xcframework"
        ),
        .binaryTarget(
            name: "CloudCommerceBinary",
            path: "./libs/CloudCommerce.xcframework"
        ),
        .target(
            name: "AriseMobileSdk",
            dependencies: [
                "AriseMobileSdkBinary",
                "CloudCommerceBinary",
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "SwiftASN1", package: "swift-asn1"),
                .product(name: "X509", package: "swift-certificates"),
            ],
            path: "Sources/AriseMobileSdkWrapper"
        ),
    ]
)
