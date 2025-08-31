// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "VLPropertyWrappers",
                      platforms: [ .iOS(.v18) ],
                      products:
                      [
                       .library(name: "VLPropertyWrappers",
                                targets: [ "VLPropertyWrappers" ])
                      ],
                      targets:
                      [
                       .target(name: "VLPropertyWrappers"),
                       .testTarget(name: "VLPropertyWrappersTests",
                                   dependencies: [ "VLPropertyWrappers" ])
                      ])
