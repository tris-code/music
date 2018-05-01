// swift-tools-version:4.2
/******************************************************************************
 *                                                                            *
 * Tris Foundation disclaims copyright to this source code.                   *
 * In place of a legal notice, here is a blessing:                            *
 *                                                                            *
 *     May you do good and not evil.                                          *
 *     May you find forgiveness for yourself and forgive others.              *
 *     May you share freely, never taking more than you give.                 *
 *                                                                            *
 ******************************************************************************/

import PackageDescription

let package = Package(
    name: "Music",
    products: [
        .library(name: "Music", targets: ["Music"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/tris-foundation/platform.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-foundation/test.git",
            .branch("master")),
    ],
    targets: [
        .target(
            name: "Music",
            dependencies: ["Platform"]),
        .testTarget(
            name: "MusicTests",
            dependencies: ["Test", "Music"]),
    ]
)
