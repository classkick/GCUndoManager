// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GCUndoManager",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "GCUndoManager",
            targets: ["GCUndoManager"]
        )
    ],
    targets: [
        .target(
            name: "GCUndoManager",
            path: ".",
            exclude: [
                "English.lproj",
                "GCUndoManagerTestbed.xcodeproj",
                "GCUndoManagerTestbed-Info.plist",
                "GCUndoManagerTestbed_Prefix.pch",
                "GCUndoTestView.h",
                "GCUndoTestView.m",
                "MyDocument.h",
                "MyDocument.m",
                "main.m",
                "GCUndoManager.podspec"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
                .unsafeFlags(["-fno-objc-arc"], .when(platforms: [.iOS, .macOS]))
            ]
        )
    ]
)
