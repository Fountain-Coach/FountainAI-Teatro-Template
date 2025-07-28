// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "FountainModule",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(
            name: "FountainModule",
            targets: ["FountainModule"]
        )
    ],
    dependencies: [
        // Add Teatro or FountainAI packages here
    ],
    targets: [
        .executableTarget(
            name: "FountainModule",
            dependencies: [],
            swiftSettings: [
                // ✅ This is the real, working way to enforce strict concurrency today
                .unsafeFlags(["-Xfrontend", "-strict-concurrency=complete"])
            ]
        ),
        .testTarget(
            name: "FountainModuleTests",
            dependencies: ["FountainModule"]
        )
    ]
)
