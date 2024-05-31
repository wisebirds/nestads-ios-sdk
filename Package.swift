// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "NestAdsSDK",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "NestAdsSDK",
      targets: ["NestAdsSDKWrapper"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.8.1"),
    .package(url: "https://github.com/realm/realm-swift.git", from: "10.49.3"),
  ],
  targets: [
    .target(name: "NestAdsSDKWrapper",
            dependencies: [
              .target(name: "NestAdsSDK", condition: .when(platforms: [.iOS])),
              .product(name: "RealmSwift", package: "realm-swift"),
              .product(name: "CryptoSwift", package: "CryptoSwift"),

            ]),
    .binaryTarget(name: "NestAdsSDK", path: "Sources/NestAdsSDK.xcframework"),
  ]
)
