Pod::Spec.new do |s|
    s.name             = "OneSignalXCFramework"
    s.version          = "3.10.2"
    s.summary          = "OneSignal push notification library for mobile apps."
    s.homepage         = "https://onesignal.com"
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { "Joseph Kalash" => "joseph@onesignal.com", "Josh Kasten" => "josh@onesignal.com" , "Brad Hesse" => "brad@onesignal.com"}
    
    s.source           = { :git => "https://github.com/OneSignal/OneSignal-iOS-SDK.git", :tag => s.version.to_s }
    s.platform         = :ios, '9.0'
    s.requires_arc     = true
    
    s.subspec 'OneSignalMain' do |ss|
      ss.dependency 'OneSignalXCFramework/OneSignalCore'
      ss.dependency 'OneSignalXCFramework/OneSignalOutcomes'
      ss.dependency 'OneSignalXCFramework/OneSignalExtension'
      ss.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_XCFramework/OneSignal.xcframework'
      #s.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_XCFramework/OneSignal.xcframework'
    end

    s.subspec 'OneSignalCore' do |ss|
      ss.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_Core/OneSignalCore.xcframework'
      #ss.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_Core/OneSignalCore.xcframework'
    end

    s.subspec 'OneSignalOutcomes' do |ss|
      ss.dependency 'OneSignalXCFramework/OneSignalCore'
      ss.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_Outcomes/OneSignalOutcomes.xcframework'
      #ss.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_Outcomes/OneSignalOutcomes.xcframework'
    end

    s.subspec 'OneSignalExtension' do |ss|
      ss.dependency 'OneSignalXCFramework/OneSignalCore'
      ss.dependency 'OneSignalXCFramework/OneSignalOutcomes'
      ss.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_Extension/OneSignalExtension.xcframework'
      #ss.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_Extension/OneSignalExtension.xcframework'
    end
  end
  