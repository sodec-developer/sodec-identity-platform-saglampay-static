Pod::Spec.new do |spec|

  spec.name = 'SAMobileCapture'
  spec.version = '1.0.4'
  spec.summary = 'Sodec Identity Platform SDK for iOS'
  spec.description = 'With Sodec Identity Platform, you can provide a fast and accessible solution for Digital Onboarding and KYC processes, protecting your company and your customers from fraud.'

  spec.homepage = 'https://sodec.com'
  spec.license = 'Proprietary'
  spec.authors = {'Hasan Dertli' => 'hasan.dertli@sodec.com'}

  spec.platform = :ios
  spec.ios.deployment_target = '15.6'

  spec.source = { :git => 'https://github.com/sodec-developer/sodec-identity-platform-saglampay-static.git', :tag => '#{spec.version}' }

  spec.swift_version = ['5.0', '6.0']

  spec.source_files = 'SAMobileCapture.xcframework/ios-arm64/SAMobileCapture.framework/Headers/*.h'
  spec.public_header_files = 'SAMobileCapture.xcframework/ios-arm64/SAMobileCapture.framework/Headers/*.h'
  spec.vendored_frameworks = 'SAMobileCapture.xcframework'
  
  spec.ios.frameworks = ['AVFoundation', 'AudioToolbox', 'Accelerate', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'CoreText', 'CoreNFC', 'CryptoKit', 'CryptoTokenKit', 'Foundation', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Photos', 'ReplayKit', 'UIKit', 'Security', 'SystemConfiguration', 'Metal']  
  
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*][config=Debug]' => 'arm64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*][config=Release]' => 'arm64',
  }
  
  spec.static_framework = true
  spec.dependency 'lottie-ios', '4.2.0'
  spec.dependency 'AFNetworking', '4.0.1'
  spec.dependency 'GoogleMLKit/TextRecognition', '8.0.0'
  spec.dependency 'GoogleMLKit/FaceDetection', '8.0.0'
  spec.dependency 'GoogleMLKit/BarcodeScanning', '8.0.0'
  spec.dependency 'TensorFlowLiteSwift', '2.7.0'
  spec.dependency 'OpenCV', '4.3.0'
  spec.dependency 'OpenSSL-Universal', '3.3.2000'
  
  spec.xcconfig = { 'OTHER_LDFLAGS' => '-weak_framework CoreNFC -weak_framework CryptoKit -weak_framework CryptoTokenKit' }
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -l\"c++\" -l\"sqlite3\" -l\"z\" -framework AFNetworking -framework AVFoundation -framework AudioToolbox -framework Accelerate -framework AssetsLibrary -framework CoreGraphics -framework CoreImage -framework CoreMedia -framework CoreVideo -framework CoreText -framework CoreTelephony -weak_framework CoreNFC -weak_framework CryptoKit -weak_framework CryptoTokenKit -framework FBLPromises -framework Foundation -framework GTMSessionFetcher -framework GoogleDataTransport -framework GoogleToolboxForMac -framework GoogleUtilities -framework GoogleUtilitiesComponents -framework LocalAuthentication -framework Lottie -framework MLImage -framework MLKitBarcodeScanning -framework MLKitCommon -framework MLKitFaceDetection -framework MLKitTextRecognition -framework MLKitVision -framework OpenSSL -framework TensorFlowLiteC -framework nanopb -framework opencv2 -framework MessageUI -framework MobileCoreServices -framework OpenGLES -framework QuartzCore -framework Photos -framework ReplayKit -framework UIKit -framework Security -framework SystemConfiguration -framework Metal -framework openmp -framework ncnn -framework MNN' }

end