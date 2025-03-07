Pod::Spec.new do |spec|
  spec.name              = 'PhunwarePermissionPriming'
  spec.version           = '1.4.0'
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

    subspec.vendored_frameworks = 'Frameworks/PhunwarePermissionPriming.xcframework'

    subspec.frameworks = 'UIKit'
  end
  
  spec.subspec 'AppTracking' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    
    subspec.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHUNWARE_PERMISSION_APP_TRACKING'
    }
  end
  
  spec.subspec 'Bluetooth' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    
    subspec.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHUNWARE_PERMISSION_BLUETOOTH'
    }
  end
  
  spec.subspec 'Camera' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    
    subspec.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHUNWARE_PERMISSION_CAMERA'
    }
  end
  
  spec.subspec 'Location' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    
    subspec.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHUNWARE_PERMISSION_LOCATION'
    }
  end
  
  spec.subspec 'Microphone' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    
    subspec.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHUNWARE_PERMISSION_MICROPHONE'
    }
  end
  
  spec.subspec 'Notifications' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    
    subspec.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHUNWARE_PERMISSION_NOTIFICATIONS'
    }
  end
  
  spec.subspec 'Photos' do |subspec|
    subspec.dependency 'PhunwarePermissionPriming/Core'
    
    subspec.pod_target_xcconfig = {
      'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHUNWARE_PERMISSION_PHOTOS'
    }
  end
end
