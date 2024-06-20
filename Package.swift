// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "NestAdsSDK",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "NestAdsSDK",
      targets: ["NestAdsSDK"]
    ),
  ],
  targets: [
    .binaryTarget(name: "NestAdsSDK", path: "Sources/NestAdsSDK.xcframework"),
  ]
)
