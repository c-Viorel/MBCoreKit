# MBCoreKit

Crash reporting, usage analytics, feedback, feature flags and in-app messages
for iOS and macOS apps that report to MingleBit's **MBCore**.

This repository is the binary distribution of the SDK: static XCFrameworks,
built for distribution (module stability), with their privacy manifest.

- **MBCoreKit**: the engine. `import MBCoreKit`, then `MBCore.start()`.
- **MBCoreKitUI**: the SwiftUI layer. `import MBCoreKitUI`, then `.mbCore()`
  on the root view.

Requires iOS 16+ or macOS 13+. Built with Xcode 27.1 (Swift 6.4).

## Add it

In Xcode: **File › Add Package Dependencies…**, enter
`https://github.com/c-Viorel/MBCoreKit` and add MBCoreKit and MBCoreKitUI to
the app target. In a `Package.swift`:

```swift
.package(url: "https://github.com/c-Viorel/MBCoreKit", from: "0.1.1")
```

The quickest way is the `mb` tool (`mb-<version>-macos.zip` on each
[release](https://github.com/c-Viorel/MBCoreKit/releases)): `mb init` adds
the package, registers the app and writes `MBCore.plist`.

**Get started:** https://admin.minglebit.com/integrate

## License

Proprietary; see [LICENSE](LICENSE).
