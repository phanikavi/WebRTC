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
            checksum: "5819785b144577016381cc7838ae9615d21a72434b1ff02551a821de7b462223"
        ),
    ]
)
