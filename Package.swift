// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PhunwarePermissionPriming",
    platforms: [
        .iOS("15.5")
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
            path: "./FrameworksStaticLinks/PhunwarePermissionCommon.xcframework"
        ),
        .binaryTarget(
            name: "PhunwarePermissionPriming",
            path: "./FrameworksStaticLinks/PhunwarePermissionPriming.xcframework"
        ),

        // Public-facing frameworks
        .binaryTarget(
            name: "PhunwareAppTrackingPermission",
            path: "./FrameworksStaticLinks/PhunwareAppTrackingPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareBluetoothPermission",
            path: "./FrameworksStaticLinks/PhunwareBluetoothPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareCameraPermission",
            path: "./FrameworksStaticLinks/PhunwareCameraPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareLocationPermission",
            path: "./FrameworksStaticLinks/PhunwareLocationPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareMicrophonePermission",
            path: "./FrameworksStaticLinks/PhunwareMicrophonePermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwareNotificationsPermission",
            path: "./FrameworksStaticLinks/PhunwareNotificationsPermission.xcframework"
        ),
        .binaryTarget(
            name: "PhunwarePhotosPermission",
            path: "./FrameworksStaticLinks/PhunwarePhotosPermission.xcframework"
        )
    ]
)
