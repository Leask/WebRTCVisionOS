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
            targets: ["WebRTCVisionOSBinary"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "WebRTCVisionOSBinary",
            url: "https://github.com/Leask/WebRTCVisionOS/releases/download/153.0.0-visionos.2/WebRTC-2026-09-23T19-12-34.xcframework.zip",
            checksum: "92fb6c950da9ac77f0e3c8a1bc903addef446ee8cf6850ab0efb4010c9cc5558"
        ),
    ]
)
