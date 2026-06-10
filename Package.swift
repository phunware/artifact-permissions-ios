// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PhunwarePermissionPriming",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        // Only expose these to clients
        .library(name: "PhunwarePermissionPriming", targets: ["PhunwarePermissionPriming", "PhunwarePermissionCommon"]),
        .library(name: "PhunwareAppTrackingPermission", targets: ["PhunwareAppTrackingPermission", "PhunwarePermissionCommon"]),
        .library(name: "PhunwareBluetoothPermission", targets: ["PhunwareBluetoothPermission", "PhunwarePermissionCommon"]),
        .library(name: "PhunwareCameraPermission", targets: ["PhunwareCameraPermission", "PhunwarePermissionCommon"]),
        .library(name: "PhunwareLocationPermission", targets: ["PhunwareLocationPermission", "PhunwarePermissionCommon"]),
        .library(name: "PhunwareMicrophonePermission", targets: ["PhunwareMicrophonePermission", "PhunwarePermissionCommon"]),
        .library(name: "PhunwareNotificationsPermis:sion", targets: ["PhunwareNotificationsPermission", "PhunwarePermissionCommon"]),
        .library(name: "PhunwarePhotosPermission", targets: ["PhunwarePhotosPermission", "PhunwarePermissionCommon"]),
        .library(name: "PhunwareSpeechRecognitionPermission", targets: ["PhunwareSpeechRecognitionPermission", "PhunwarePermissionCommon"]),
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
        ),
        .binaryTarget(
            name: "PhunwareSpeechRecognitionPermission",
            path: "./Frameworks/PhunwareSpeechRecognitionPermission.xcframework"
        )
    ]
)
