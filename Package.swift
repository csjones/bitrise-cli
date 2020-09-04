// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bitrise-cli",
    products: [
        .executable(
            name: "bitrise-cli",
            targets: [
                "bitrise-cli",
                "bitrise-api"
            ]
        )
    ],
    dependencies: [
        .package(
            name: "Alamofire",
            url: "https://github.com/Alamofire/Alamofire.git",
            from: "4.9.0"
        ),
        .package(
            name: "swift-argument-parser",
            url: "https://github.com/apple/swift-argument-parser.git",
            from: "0.3.1"
        ),
    ],
    targets: [
        .target(
            name: "bitrise-cli",
            dependencies: [
                .target(name: "bitrise-api"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .target(
            name: "bitrise-api",
            dependencies: [
                "Alamofire"
            ],
            path: "Sources/bitrise-api/Sources"
        ),
        .testTarget(
            name: "bitrise-cliTests",
            dependencies: [
                "bitrise-cli"
            ]
        ),
    ]
)
