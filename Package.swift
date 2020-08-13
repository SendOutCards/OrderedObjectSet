// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "OrderedObjectSet",
    products: [
        .library(name: "OrderedObjectSet", targets: ["OrderedObjectSet"]),
    ],
    targets: [
        .target(name: "OrderedObjectSet"),
        .testTarget(name: "OrderedObjectSetTests", dependencies: ["OrderedObjectSet"]),
    ]
)
