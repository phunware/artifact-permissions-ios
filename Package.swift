// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PhunwarePermissionPriming",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        // Only expose these to clients
        .library(name: "PhunwarePermissionPriming", targets: ["PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwareAppTrackingPermission", targets: ["PhunwareAppTrackingPermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwareBluetoothPermission", targets: ["PhunwareBluetoothPermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwareCameraPermission", targets: ["PhunwareCameraPermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwareLocationPermission", targets: ["PhunwareLocationPermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwareMicrophonePermission", targets: ["PhunwareMicrophonePermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwareNotificationsPermission", targets: ["PhunwareNotificationsPermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwarePhotosPermission", targets: ["PhunwarePhotosPermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
        .library(name: "PhunwareSpeechRecognitionPermission", targets: ["PhunwareSpeechRecognitionPermission", "PhunwarePermissionCommon", "PhunwarePermissionPrimingTargets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/phunware/artifact-theming-ios.git", branch: "release/1.1.2"),
        .package(url: "https://github.com/phunware/artifact-foundation-ios.git", branch: "release/1.1.0"),
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
        .target(name: "PhunwarePermissionPrimingTargets",
            dependencies:[
                .target(name: "PhunwarePermissionPriming"),
                .product(name: "PhunwareTheming", package: "artifact-theming-ios", condition: nil),
                .product(name: "PhunwareFoundation", package: "artifact-foundation-ios", condition: nil),
            ],
            path: "PhunwarePermissionPrimingTargets"
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
