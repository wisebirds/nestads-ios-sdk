// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "NestAdsSdk",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "NestAdsSdk",
      targets: ["NestAdsSdkWrapper"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.8.1"),
    .package(url: "https://github.com/realm/realm-swift.git", from: "10.36.0"),
  ],
  targets: [
    .target(name: "NestAdsSdkWrapper",
            dependencies: [
              .target(name: "NestAdsSdk", condition: .when(platforms: [.iOS])),
              .product(name: "RealmSwift", package: "realm-swift"),
              .product(name: "CryptoSwift", package: "CryptoSwift"),

            ]),
    .binaryTarget(name: "NestAdsSdk", path: "Sources/NestAdsSdk.xcframework"),
  ]
)
