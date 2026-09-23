# WebRTCVisionOS

Swift Package wrapper for the UNAS Access visionOS WebRTC binary.

This package exists because Swift Package Manager uses the repository identity
for dependency resolution. UNAS Access keeps using `stasel/WebRTC` for
iOS, iPadOS, and Mac Catalyst, while visionOS temporarily depends on this
package until upstream WebRTC publishes a visionOS-capable XCFramework.

The binary artifact is built from the `Leask/WebRTC` fork and should expose the
same `WebRTC` module name as the upstream package.

## Current Release

- Version: `153.0.0-visionos.2`
- Source fork: `Leask/WebRTC`
- Source branch: `visionos-xcframework`
- Upstream base: `stasel/WebRTC` `latest`, WebRTC `branch-heads/8010`
- GitHub Actions run: `35899080224`
- SwiftPM checksum:
  `92fb6c950da9ac77f0e3c8a1bc903addef446ee8cf6850ab0efb4010c9cc5558`

## Usage

Add this package only to visionOS targets. Keep the upstream `stasel/WebRTC`
package for iOS, iPadOS, and Mac Catalyst until the upstream package publishes
visionOS slices.

```swift
.package(
    url: "https://github.com/Leask/WebRTCVisionOS.git",
    exact: "153.0.0-visionos.2"
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

The SwiftPM binary target is intentionally named `WebRTCVisionOSBinary` to avoid
colliding with the upstream package target name. The bundled XCFramework still
exports the standard `WebRTC` module, so consuming code can keep importing
`WebRTC`.
