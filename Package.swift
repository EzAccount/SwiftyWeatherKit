// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyWeatherKit",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v6)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftyWeatherKit",
            targets: ["SwiftyWeatherKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftyWeatherKit",
            dependencies: ["SwiftyJSON", "Alamofire"]),
        .testTarget(
            name: "SwiftyWeatherKitTests",
            dependencies: ["SwiftyWeatherKit"]),
    ]
)
