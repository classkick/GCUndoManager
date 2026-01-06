// swift-tools-version: 5.11
import PackageDescription

let package = Package(
    name: "GCUndoManager",
    platforms: [
        .iOS(.v12),
        .macOS(.v13),
        .macCatalyst(.v13),
        .tvOS(.v15),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "GCUndoManager", targets: ["GCUndoManager"]) // binary product
    ],
    targets: [
        .binaryTarget(
            name: "GCUndoManager",
            path: "build-xc/GCUndoManager.xcframework"
        )
    ]
)
