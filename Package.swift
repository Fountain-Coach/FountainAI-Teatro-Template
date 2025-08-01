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
        .package(url: "https://github.com/Fountain-Coach/codex-deployer", branch: "main"),
        .package(url: "https://github.com/Fountain-Coach/Teatro", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "FountainModule",
            dependencies: [
                .product(name: "CodexDeployer", package: "codex-deployer"),
                .product(name: "Teatro", package: "Teatro")
            ],
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
