// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FacebookSDK",
    products: [
        .library(
            name: "FacebookCore",
            targets: ["FacebookCore"]),
        .library(
            name: "FacebookLogin",
            targets: ["FacebookLogin"]),
        .library(
            name: "FacebookShare",
            targets: ["FacebookShare"]),
    ],
    targets: [
        .target(
            name: "FacebookCore",
            dependencies: ["FBSDKCoreKit"],
            path: "Sources/Core"),
        .target(
            name: "FacebookLogin",
            dependencies: ["FacebookCore", "FBSDKCoreKit", "FBSDKLoginKit"],
            path: "Sources/Login"),
        .target(
            name: "FacebookShare",
            dependencies: ["FacebookCore", "FBSDKCoreKit", "FBSDKShareKit"],
            path: "Sources/Share"),
    ]
)
