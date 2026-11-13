// swift-tools-version:5.9
// MBCoreKit: crash reporting, usage analytics, feedback, feature flags and
// in-app messages for apps that report to MingleBit's MBCore.
// Binary package, written by the release tooling: do not edit by hand.
import PackageDescription

let version = "0.1.1"
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
            checksum: "dff6ec422f118ecb2457d1e8d746cefff023fac7f43e7672238229441567a353"
        ),
        .binaryTarget(
            name: "MBCoreKitUI",
            url: "\(releases)/MBCoreKitUI.xcframework.zip",
            checksum: "cfc536c46099d3db4bd719d4b21c125b184dfb7f860f58614e22bd9b78c486fd"
        ),
    ]
)
