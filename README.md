# WebRTCVisionOS

Swift Package wrapper for the UNAS Access visionOS WebRTC binary.

This package exists because Swift Package Manager uses the repository identity
for dependency resolution. UNAS Access keeps using `stasel/WebRTC` for
iOS, iPadOS, and Mac Catalyst, while visionOS temporarily depends on this
package until upstream WebRTC publishes a visionOS-capable XCFramework.

The binary artifact is built from the `Leask/WebRTC` fork and should expose the
same `WebRTC` module name as the upstream package.

## Current Release

- Version: `153.0.0-visionos.1`
- Source fork: `Leask/WebRTC`
- Source branch: `visionos-xcframework`
- Upstream base: `stasel/WebRTC` `latest`, WebRTC `branch-heads/8010`
- GitHub Actions run: `35857290007`
- SwiftPM checksum:
  `19a8d2267411208d1473d5b72fc2d97d678ba25b3aa1ab3158e5d03a89d879a2`

## Usage

Add this package only to visionOS targets. Keep the upstream `stasel/WebRTC`
package for iOS, iPadOS, and Mac Catalyst until the upstream package publishes
visionOS slices.

```swift
.package(
    url: "https://github.com/Leask/WebRTCVisionOS.git",
    exact: "153.0.0-visionos.1"
)
```

Then conditionally depend on the package product for visionOS:

```swift
.product(
    name: "WebRTCVisionOS",
    package: "WebRTCVisionOS",
    condition: .when(platforms: [.visionOS])
)
```
