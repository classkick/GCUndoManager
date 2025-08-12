// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GCUndoManager",
    platforms: [
        .iOS(.v12)
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
