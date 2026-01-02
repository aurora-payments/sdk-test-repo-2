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
    dependencies: [],
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
            ],
            path: "Sources/AriseMobileSdkWrapper"
        ),
    ]
)
