// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "WebRTCVisionOS",
    platforms: [
        .visionOS(.v2),
    ],
    products: [
        .library(
            name: "WebRTCVisionOS",
            targets: ["WebRTC"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/Leask/WebRTCVisionOS/releases/download/153.0.0-visionos.1/WebRTC-2026-09-23T13-04-33.xcframework.zip",
            checksum: "19a8d2267411208d1473d5b72fc2d97d678ba25b3aa1ab3158e5d03a89d879a2"
        ),
    ]
)
