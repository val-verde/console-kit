// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "console-kit",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "ConsoleKit", targets: ["ConsoleKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/val-verde/swift-log.git", .branch("val-verde-mainline-next")),
    ],
    targets: [
        .target(name: "ConsoleKit", dependencies: [
            .product(name: "Logging", package: "swift-log"),
        ]),
        .testTarget(name: "ConsoleKitTests", dependencies: [
            .target(name: "ConsoleKit"),
        ]),
        .target(name: "ConsoleKitExample", dependencies: [
            .target(name: "ConsoleKit"),
        ]),
    ]
)
