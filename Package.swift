// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "mamba",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_13)
    ],
    products: [
        .library(name: "mamba", type: .dynamic, targets: ["mamba"])
    ],
    dependencies: [],
    targets: [
        // .target(name: "Version",
        //         dependencies: [],
        //         exclude: ["LICENSE" , "version.txt"],
        //         linkerSettings: [
        //             .linkedFramework("Foundation"),
        //         ]),
        .target(name: "mamba",
                // dependencies: ["Version"],
                // exclude: ["Resources/ConfigCat.h", "Resources/Info.plist"],
                // swiftSettings: [
                //     .define("DEBUG", .when(configuration: .debug))
                // ],
                linkerSettings: [
                    .linkedFramework("CoreMedia"),
                ])//,
        // .testTarget(name: "ConfigCatTests",
        //             dependencies: ["ConfigCat"],
        //             exclude: ["Resources/Info.plist"],
        //             resources: [
        //                 .process("Resources")]
        // )
        
    ],
    swiftLanguageVersions: [.v4]
)