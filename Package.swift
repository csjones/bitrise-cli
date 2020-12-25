// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Bitrise",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .executable(name: "BitriseCLI", targets: ["ApplicationEntryPoint"]),
        .library(name: "BitriseAPI", targets: ["API"])
    ],
    dependencies: [
        .package(
            // name: "swift-argument-parser",
            url: "https://github.com/apple/swift-argument-parser.git",
            .exact("0.3.1")
        ),
    ],
    targets: [
        .target(
            name: "ApplicationEntryPoint",
            dependencies: [
                "CLI"
            ]
        ),
        .target(
            name: "CLI",
            dependencies: [
                .target(name: "API"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .target(
            name: "API",
            dependencies: [
            ],
            path: "Sources/API"
        ),
    ]
)
