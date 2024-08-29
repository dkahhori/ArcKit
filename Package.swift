// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "ArcKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Define the library product that this package produces
        .library(
            name: "ArcKit",
            targets: ["ArcKit"]),
    ],
    targets: [
        // Define the module target
        .target(
            name: "ArcKit",
            path: "Sources",
            sources: ["UIView+shadow"]  // Pointing to the UIView+shadow folder within Sources
        ),
        // Define the test target
        .testTarget(
            name: "ArcKitTests",
            dependencies: ["ArcKit"],
            path: "Tests"
        ),
    ]
)
