// swift-tools-version:5.9
// MBCoreKit: crash reporting, usage analytics, feedback, feature flags and
// in-app messages for apps that report to MingleBit's MBCore.
// Binary package, written by the release tooling: do not edit by hand.
import PackageDescription

let version = "0.1.3"
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
            checksum: "cebacd0823e0e96ecde3a2aa4273116286ef257148ad259916238ce9783bb16f"
        ),
        .binaryTarget(
            name: "MBCoreKitUI",
            url: "\(releases)/MBCoreKitUI.xcframework.zip",
            checksum: "8e8de633d6726c8ebae3eae5ec92fd956435c5babe0c8a8f4e017364a9199611"
        ),
    ]
)
