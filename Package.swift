// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZMCKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZMCKit",
            targets: ["SCSDKCameraKitReferenceUI", "SCSDKCameraKit", "SCSDKCoreKit", "SCSDKCreativeKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZMCKit"),
        .testTarget(
            name: "ZMCKitTests",
            dependencies: ["ZMCKit"]
        ),
        .binaryTarget(
                    name: "SCSDKCameraKitReferenceUI",
                    path: "./XCFrameworks/SCSDKCameraKitReferenceUI.xcframework"  // Local path to the xcframework
                ),
        .binaryTarget(
                    name: "SCSDKCameraKit",
                    path: "./XCFrameworks/SCSDKCameraKit.xcframework"  // Local path to the xcframework
                ),
        .binaryTarget(
                    name: "SCSDKCoreKit",
                    path: "./XCFrameworks/SCSDKCoreKit.xcframework"  // Local path to the xcframework
                ),
        .binaryTarget(
                    name: "SCSDKCreativeKit",
                    path: "./XCFrameworks/SCSDKCreativeKit.xcframework"  // Local path to the xcframework
                ),

    ]
)
