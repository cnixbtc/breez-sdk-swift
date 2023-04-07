// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "breez-sdk-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/cnixbtc/breez-sdk-swift/releases/download/0.0.1/breez_sdkFFI.xcframework.zip", checksum: "b9ed648fb3fa1c098645b0be5ec0646a3a29d6ca9333be4f57dc050452db33d9"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
        .testTarget(name: "BreezSDKTests", dependencies: ["BreezSDK"]),
    ]
)
