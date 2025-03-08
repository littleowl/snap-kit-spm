// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnapSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SCSDKCoreKit",
            targets: ["SCSDKCoreKit"]),
        .library(
            name: "SCSDKLoginKit",
            targets: ["SCSDKCoreKit"]),
        .library(
            name: "SCSDKCreativeKit",
            targets: ["SCSDKCoreKit"]),
        .library(
            name: "SCSnapKit",
            targets: ["SCSnapKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "SCSDKCoreKit",
            path: "SCSDKCoreKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKLoginKit",
            path: "SCSDKLoginKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKCreativeKit",
            path: "SCSDKCreativeKit.xcframework"
        ),
        .target(
            name: "SCSDKCoreKit",
            dependencies: [
                "SCSDKCoreKit",
                "SCSDKLoginKit",
                "SCSDKCreativeKit",
            ]
        ),
    ]
)
