// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PhunwarePermissionPriming",
    platforms: [
        .iOS(.v15_5)
    ],
    products: [
        // Only expose these to clients
        .library(name: "PhunwareAppTrackingPermission", targets: ["PhunwareAppTrackingPermission"]),
        .library(name: "PhunwareBluetoothPermission", targets: ["PhunwareBluetoothPermission"]),
        .library(name: "PhunwareCameraPermission", targets: ["PhunwareCameraPermission"]),
        .library(name: "PhunwareLocationPermission", targets: ["PhunwareLocationPermission"]),
        .library(name: "PhunwareMicrophonePermission", targets: ["PhunwareMicrophonePermission"]),
        .library(name: "PhunwareNotificationsPermission", targets: ["PhunwareNotificationsPermission"]),
        .library(name: "PhunwarePhotosPermission", targets: ["PhunwarePhotosPermission"]),
    ],
    targets: [
        // Internal frameworks
        .binaryTarget(
            name: "PhunwarePermissionCommon",
            path: "./Frameworks/PhunwarePermissionCommon.xcframework"
        ),
        .binaryTarget(
            name: "PhunwarePermissionPriming",
            path: "./Frameworks/PhunwarePermissionPriming.xcframework"
        ),

        // Public-facing frameworks
        .binaryTarget(
            name: "PhunwareAppTrackingPermission",
            path: "./Frameworks/PhunwareAppTrackingPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareBluetoothPermission",
            path: "./Frameworks/PhunwareBluetoothPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareCameraPermission",
            path: "./Frameworks/PhunwareCameraPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareLocationPermission",
            path: "./Frameworks/PhunwareLocationPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareMicrophonePermission",
            path: "./Frameworks/PhunwareMicrophonePermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareNotificationsPermission",
            path: "./Frameworks/PhunwareNotificationsPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwarePhotosPermission",
            path: "./Frameworks/PhunwarePhotosPermission.xcframework"
        )
    ]
)
