Pod::Spec.new do |spec|
  spec.name              = 'PhunwarePermissionPriming'
  spec.version           = '1.5.0'
  spec.summary           = 'A library currently being used by Phunware internally to prime for and request permissions in our own Modules.'
  spec.homepage          = 'https://www.phunware.com'
  spec.license           = { :type => 'Copyright', :text => 'Copyright 2009-present Phunware, Inc. All rights reserved.' }
  spec.author            = { 'Phunware, Inc.' => 'https://www.phunware.com' }
  spec.social_media_url  = 'https://twitter.com/Phunware'
  spec.platform          = :ios, '15.5'
  spec.source            = { :git => 'https://github.com/phunware/artifact-permissions-ios.git', :tag => spec.version.to_s }
  spec.cocoapods_version = '>= 1.12.0'

  spec.default_subspecs =
    'AppTracking',
    'Bluetooth',
    'Camera',
    'Location',
    'Microphone',
    'Notifications',
    'Photos'
  
  spec.subspec 'Core' do |subspec|
    subspec.dependency 'PhunwareFoundation', '~> 1.1.0'
    subspec.dependency 'PhunwareTheming', '~> 1.1.0'

    subspec.vendored_frameworks = ['Frameworks/PhunwarePermissionPriming.xcframework', 
                                   'Frameworks/PhunwarePermissionCommon.xcframework']

    subspec.frameworks = 'UIKit'
  end
  
  spec.subspec 'AppTracking' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'    
    subspec.vendored_frameworks = 'Frameworks/PhunwareAppTrackingPermission.xcframework'
  end
  
  spec.subspec 'Bluetooth' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'  
    subspec.vendored_frameworks = 'Frameworks/PhunwareBluetoothPermission.xcframework'
  end
  
  spec.subspec 'Camera' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'  
    subspec.vendored_frameworks = 'Frameworks/PhunwareCameraPermission.xcframework'
  end
  
  spec.subspec 'Location' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'    
    subspec.vendored_frameworks = 'Frameworks/PhunwareLocationPermission.xcframework'
  end
  
  spec.subspec 'Microphone' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'    
    subspec.vendored_frameworks = 'Frameworks/PhunwareMicrophonePermission.xcframework'
  end
  
  spec.subspec 'Notifications' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    subspec.vendored_frameworks = 'Frameworks/PhunwareNotificationsPermission.xcframework'
  end
  
  spec.subspec 'Photos' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    subspec.vendored_frameworks = 'Frameworks/PhunwarePhotosPermission.xcframework'
  end

  spec.subspec 'CoreStaticLinks' do |subspec|
    subspec.dependency 'PhunwareFoundation/CoreStaticLinks', '~> 1.1.0'
    subspec.dependency 'PhunwareTheming','~> 1.1.0'

    subspec.vendored_frameworks = ['FrameworksStaticLinks/PhunwarePermissionPriming.xcframework', 
                                   'FrameworksStaticLinks/PhunwarePermissionCommon.xcframework']

    subspec.frameworks = 'UIKit'
  end

  spec.subspec 'AppTrackingStaticLinks' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/CoreStaticLinks'    
    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareAppTrackingPermission.xcframework'
  end
  
  spec.subspec 'Bluetooth' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/CoreStaticLinks'  
    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareBluetoothPermission.xcframework'
  end
  
  spec.subspec 'Camera' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/CoreStaticLinks'  
    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareCameraPermission.xcframework'
  end
  
  spec.subspec 'Location' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/CoreStaticLinks'    
    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareLocationPermission.xcframework'
  end
  
  spec.subspec 'Microphone' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/CoreStaticLinks'    
    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareMicrophonePermission.xcframework'
  end
  
  spec.subspec 'Notifications' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/CoreStaticLinks'
    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareNotificationsPermission.xcframework'
  end
  
  spec.subspec 'Photos' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/CoreStaticLinks'
    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwarePhotosPermission.xcframework'
  end

end
