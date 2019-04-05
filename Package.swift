// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Music",
    products: [
        .library(name: "Music", targets: ["Music"]),
        .library(name: "MIDI", targets: ["MIDI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/tris-foundation/math.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-foundation/test.git",
            .branch("master")),
    ],
    targets: [
        .target(
            name: "Music",
            dependencies: []),
        .target(
            name: "MIDI",
            dependencies: ["Math", "Music"]),
        .testTarget(
            name: "MusicTests",
            dependencies: ["Test", "Music", "Audio"]),
        .testTarget(
            name: "MIDITests",
            dependencies: ["Test", "MIDI"]),
    ]
)
