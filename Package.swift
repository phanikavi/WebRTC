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
            url: "https://github.com/phanikavi/WebRTC/releases/download/98.0.0/WebRTC-M98.0.0.xcframework.zip",
            checksum: "76f6c78d15ca9d0fde5759638650e6ec8114375250da994c98c162a7dbede78a"
        ),
    ]
)
