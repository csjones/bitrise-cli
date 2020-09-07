// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bitrise-cli",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(
            name: "br",
            targets: [
                "ApplicationEntryPoint"
            ]
        )
    ],
    dependencies: [
//        .package(
//            name: "Alamofire",
//            url: "https://github.com/Alamofire/Alamofire.git",
//            from: "4.9.0"
//        ),
        .package(
            name: "swift-argument-parser",
            url: "https://github.com/apple/swift-argument-parser.git",
            from: "0.3.1"
        ),
    ],
    targets: [
        .target(
            name: "ApplicationEntryPoint",
            dependencies: [
                "BitriseCLI"
            ]
        ),
        .target(
            name: "BitriseCLI",
            dependencies: [
                .target(name: "BitriseAPI"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .target(
            name: "BitriseAPI",
            dependencies: [
//                "Alamofire"
            ],
            path: "Sources/BitriseAPI/Sources"
        ),
        .testTarget(
            name: "BitriseCLITests",
            dependencies: [
                "BitriseCLI"
            ]
        ),
    ]
)
