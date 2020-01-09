// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "fluent-mysql-driver",
    platforms: [
       .macOS(.v10_14)
    ],
    products: [
        .library(name: "FluentMySQLDriver", targets: ["FluentMySQLDriver"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent-kit.git", .branch("empty-set")),
        .package(url: "https://github.com/vapor/mysql-kit.git", from: "4.0.0-beta.2"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "FluentMySQLDriver", dependencies: [
            "FluentKit",
            "FluentSQL",
            "Logging",
            "MySQLKit"
        ]),
        .testTarget(name: "FluentMySQLDriverTests", dependencies: ["FluentBenchmark", "FluentMySQLDriver"]),
    ]
)
