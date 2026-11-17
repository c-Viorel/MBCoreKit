// swift-tools-version:5.9
// MBCoreKit: crash reporting, usage analytics, feedback, feature flags and
// in-app messages for apps that report to MingleBit's MBCore.
// Binary package, written by the release tooling: do not edit by hand.
import PackageDescription

let version = "0.1.4"
let releases = "https://github.com/c-Viorel/MBCoreKit/releases/download/\(version)"

let package = Package(
    name: "MBCoreKit",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        .library(name: "MBCoreKit", targets: ["MBCoreKit"]),
        .library(name: "MBCoreKitUI", targets: ["MBCoreKitUI", "MBCoreKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "MBCoreKit",
            url: "\(releases)/MBCoreKit.xcframework.zip",
            checksum: "c4cb1a175518b20df5dd8584e92ac69bfdfd3a48df7e53fc3da95148da88d2f0"
        ),
        .binaryTarget(
            name: "MBCoreKitUI",
            url: "\(releases)/MBCoreKitUI.xcframework.zip",
            checksum: "7b49ad3ec304b53465271bbcba15332b34e531c52659d5f4ac9bdae2811a21a9"
        ),
    ]
)
