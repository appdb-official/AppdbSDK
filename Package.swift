// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppdbFramework",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15)
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
           url: "https://dbservices.to/lib-dist/AppdbFramework-1.3.xcframework.zip",
           checksum: "55832d4b9670acb666a07133c18d1a8ea6869df1372acf09c71854093fdd7bf1"
       ),
    ]
)
