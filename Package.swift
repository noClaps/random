// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "random",
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.3.1")
  ],
  targets: [
    .executableTarget(
      name: "random",
      dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")]
    )
  ]
)
