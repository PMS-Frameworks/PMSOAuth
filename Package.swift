// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PMSOAuth",
    platforms: [.iOS(.v11), .macOS(.v10_12)],
    products: [
        .library(
            name: "PMSOAuth",
            targets: ["PMSOAuth"]),
    ],
    dependencies: [
        .package(name: "Facebook", url: "https://github.com/facebook/facebook-ios-sdk", from: "11.0.1"),
        .package(name: "NaverLogin", url: "https://github.com/Goeun1001/naveridlogin-spm", .branch("master")),
    ],
    targets: [
        .target(
            name: "PMSOAuth",
            dependencies: [
//                .product(name: "FacebookCore", package: "Facebook", condition: .when(platforms: [.iOS])),
                .product(name: "FacebookLogin", package: "Facebook", condition: .when(platforms: [.iOS])),
//                "NaverThirdPartyLoginTarget"
                .product(name: "NaverThirdPartyLoginTarget", package: "NaverLogin", condition: .when(platforms: [.iOS])),
            ],
            path: "PMSOAuth/Classes")
    ]
)
