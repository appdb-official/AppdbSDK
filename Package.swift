// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppdbFramework",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AppdbFramework",
            targets: [
                "AppdbRemoteBinaryPackage"
            ]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
       .binaryTarget(
           name: "AppdbRemoteBinaryPackage",
           url: "https://dbservices.to/lib-dist/AppdbFramework-1.1.xcframework.zip",
           checksum: "6623ceb19a26cc51f680a9529b21d50d09be2921557986a354697ad0aa864df1"
       ),
    ]
)
