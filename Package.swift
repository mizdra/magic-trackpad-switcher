// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "magic-trackpad-switcher",
    platforms: [
        .macOS(.v10_15),
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "magic-trackpad-switcher",
            dependencies: ["ShellOut"],
            publicHeadersPath: "Sources/magic-trackpad-switcher"),
        .testTarget(
            name: "magic-trackpad-switcherTests",
            dependencies: ["magic-trackpad-switcher"]),
    ]
)
