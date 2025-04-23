// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "xcodeTheme",
    platforms: [.macOS(.v10_15)],
    products: [
        .executable(name: "install", targets: ["Install"]),
        .executable(name: "uninstall", targets: ["Uninstall"])
    ],
    dependencies: [
        .package(url: "https://github.com/pelagornis/swift-file", from: "1.1.0")
    ],
    targets: [
        .executableTarget(
            name: "Install",
            dependencies: [
                .product(name: "File", package: "swift-file")
            ]
        ),
        .executableTarget(
            name: "Uninstall",
            dependencies: [
                .product(name: "File", package: "swift-file")
            ]
        )
    ]
)