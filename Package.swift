// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "LitecoinKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "LitecoinKit",
            targets: ["LitecoinKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/curdicu/BitcoinCore.git", .branch("main")),
        .package(url: "https://github.com/greymass/swift-scrypt.git", from: "1.0.0"),
        .package(url: "https://github.com/curdicu/HsToolKit.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "LitecoinKit",
            dependencies: [
                .product(name: "Scrypt", package: "swift-scrypt"),
                .product(name: "BitcoinCore", package: "BitcoinCore"),
                .product(name: "HsToolKit", package: "HsToolKit"),
            ]
        ),
    ]
)
