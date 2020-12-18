// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Yoga",
    platforms: [
        .iOS(.v8),
        .tvOS(.v10),
        .macOS(.v10_7),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "Yoga", type: .dynamic, targets: ["Yoga"]),
        .library(name: "Yogakit", type: .dynamic, targets: ["YogaKit"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Yoga",
            dependencies: [
            ],
            path: "./src/Source"
        ),
        .target(
            name: "YogaKit",
            dependencies: [
                "Yoga"
            ],
            path: "./src/Source"
        )
    ]
)
