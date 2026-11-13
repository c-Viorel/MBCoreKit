// swift-tools-version:5.9
// MBCoreKit: crash reporting, usage analytics, feedback, feature flags and
// in-app messages for apps that report to MingleBit's MBCore.
// Binary package, written by the release tooling: do not edit by hand.
import PackageDescription

let version = "0.1.2"
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
            checksum: "bb2bea4ac31352acd5f6df0549ee58e3eed1b1c3f265b8f47cf618341bb209ef"
        ),
        .binaryTarget(
            name: "MBCoreKitUI",
            url: "\(releases)/MBCoreKitUI.xcframework.zip",
            checksum: "11de91fbc76d15a0b5737f1410e37efb98af289d82d9b9433b0b21354f061ba8"
        ),
    ]
)
