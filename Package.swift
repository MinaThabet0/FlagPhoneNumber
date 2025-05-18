// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumber"]),
    ],
    dependencies: [
        .package(url: "https://github.com/iziz/libPhoneNumber-iOS.git", from: "0.9.15"),
    ],
    targets: [
        .target(
            name: "FlagPhoneNumber",
            dependencies: [.product(name: "libPhoneNumber_iOS", package: "libPhoneNumber-iOS")],
            path: "Sources",
            exclude: ["Info.plist", "libPhoneNumber"],
            publicHeadersPath: "."
        ),
    ]
)
