Pod::Spec.new do |s|
  s.name             = 'PhpfoxJitsiMeetSDK'
  s.version          = '99.0.0'
  s.summary          = 'Jitsi Meet phpFox iOS SDK'
  s.description      = 'Jitsi Meet is a WebRTC compatible, free and Open Source video conferencing system that provides browsers and mobile applications with Real Time Communications capabilities.'
  s.homepage         = 'https://github.com/phpfox-mobile/jitsi-sdk-ios'
  s.license          = 'MIT'
  s.authors          = 'The Jitsi Meet project authors & Trex from phpFox Mobile team'
  s.source           = { :git => 'https://github.com/phpfox-mobile/jitsi-sdk-ios.git', :tag => s.version }

  s.platform         = :ios, '11.0'

  s.vendored_frameworks = 'Frameworks/JitsiMeetSDK.xcframework', 'Frameworks/WebRTC.xcframework'
  s.dependency 'Giphy', '2.1.20'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
