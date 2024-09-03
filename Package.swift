// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let package = Package(
    name: "ScrollableTabView",
    products: [
        .library(
            name: "ScrollableTabView",
            targets: ["ScrollableTabView"]),
    ],
    targets: [
        .target(
            name: "ScrollableTabView"),
        .testTarget(
            name: "ScrollableTabViewTests",
            dependencies: ["ScrollableTabView"]),
    ]
)
