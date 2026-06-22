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
        ),
        .binaryTarget(
            name: "PhunwareSpeechRecognitionPermission",
            path: "./FrameworksStaticLinks/PhunwareSpeechRecognitionPermission.xcframework"
        )
    ]
)
