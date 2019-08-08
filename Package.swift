// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "JobsPostgreSQLDriver",
  products: [
    .library(
      name: "JobsPostgreSQLDriver",
      targets: ["JobsPostgreSQLDriver"]),
    ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    .package(url: "https://github.com/Igor-Palaguta/jobs.git", .branch("OneThread")),
    .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0")
  ],
  targets: [
    .target(
      name: "JobsPostgreSQLDriver",
      dependencies: ["Vapor", "Jobs", "FluentPostgreSQL"]),
    .testTarget(
      name: "JobsPostgreSQLDriverTests",
      dependencies: ["JobsPostgreSQLDriver"]),
    ]
)

