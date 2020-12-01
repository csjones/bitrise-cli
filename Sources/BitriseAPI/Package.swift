// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "API",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(name: "API", targets: ["API"])
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "API", dependencies: [
        ], path: "Sources")
    ]
)
