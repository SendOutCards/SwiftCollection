// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "SwiftCollection",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "SwiftCollection", targets: ["SwiftCollection"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SendOutCards/AssociatedValues.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/SendOutCards/OrderedObjectSet.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        .target(name: "SwiftCollection", dependencies: ["AssociatedValues", "OrderedObjectSet"]),
    ]
)
