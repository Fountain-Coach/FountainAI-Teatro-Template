// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FountainModule",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "FountainModule", targets: ["FountainModule"]),
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "FountainModule",
            dependencies: []),
        .testTarget(
            name: "FountainModuleTests",
            dependencies: ["FountainModule"]),
    ]
)
