// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Yoga",
    platforms: [
        .iOS(.v8),
        .tvOS(.v10),
        .macOS(.v10_10),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "Yoga", targets: ["Yoga"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Yoga",
            dependencies: [],
            path: "./yoga",
            publicHeadersPath: "./swiftpm-support",
            cxxSettings: [
                .headerSearchPath("../"),
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
            ]
        ),
    ],
    cxxLanguageStandard: .cxx14
)
