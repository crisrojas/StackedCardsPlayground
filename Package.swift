// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Test",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Test",
            targets: ["AppModule"],
            bundleIdentifier: "com.vlabs.Test",
            teamIdentifier: "FC68W92XBB",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/crisrojas/SwiftWind", "0.0.5"..<"1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "SwiftWind", package: "swiftwind")
            ],
            path: "."
        )
    ]
)