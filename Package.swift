// swift-tools-version:5.9
// MBCoreKit: crash reporting, usage analytics, feedback, feature flags and
// in-app messages for apps that report to MingleBit's MBCore.
// Binary package, written by the release tooling: do not edit by hand.
import PackageDescription

let version = "0.1.0"
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
            checksum: "195f6f27259ef5d37facfdcbfd2f1e6e2a7f8ee3051e9178f3615a31e68bbbe3"
        ),
        .binaryTarget(
            name: "MBCoreKitUI",
            url: "\(releases)/MBCoreKitUI.xcframework.zip",
            checksum: "a80a84d92a1295b8826785563d77262d580185f658e14547cb1e3cd4e427a65b"
        ),
    ]
)
