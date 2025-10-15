// swift-tools-version:5.3

import PackageDescription

let cassowary = Package(
  name: "cassowary",
  products: [
    .library(name: "cassowary", targets: ["Cassowary"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-collections.git", from: "1.3.0"),
  ],
  targets: [
    .target(name: "Cassowary", dependencies: [
        .product(name: "OrderedCollections", package: "swift-collections")
    ]),
    .testTarget(name: "CassowaryTests", dependencies: ["Cassowary"]),
  ]
)
