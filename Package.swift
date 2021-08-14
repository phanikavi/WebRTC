// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/phanikavi/WebRTC/releases/download/90.0.1/WebRTC-M90.0.1.xcframework.zip",
            checksum: "b65589540c10697acd5d69f12216689940bae579f3835236cf8abb868a9ad2f5"
        ),
    ]
)
