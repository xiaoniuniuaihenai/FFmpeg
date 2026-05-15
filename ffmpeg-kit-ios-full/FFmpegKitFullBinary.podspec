Pod::Spec.new do |s|
  s.name             = 'FFmpegKitFullBinary'
  s.version          = '6.0.0.1'
  s.summary          = 'Self-hosted FFmpegKit full binary distribution for iOS.'
  s.description      = <<-DESC
A self-hosted CocoaPods wrapper around prebuilt FFmpegKit full XCFramework binaries,
intended for internal use after official FFmpegKit binary distribution was discontinued.
  DESC

  s.homepage         = 'https://example.com/ffmpeg-kit-full-binary'
  s.license          = { :type => 'LGPL-3.0-or-later' }
  s.author           = { 'Your Team' => 'dev@example.com' }

  # Replace with your own private git repo before sharing across projects.
  s.source           = { :git => 'https://example.com/your-org/FFmpegKitFullBinary.git', :tag => s.version.to_s }

  s.platform         = :ios, '12.1'
  s.swift_version    = '5.0'
  s.requires_arc     = true
  s.static_framework = true

  s.vendored_frameworks = [
    'ffmpegkit.xcframework',
    'libavcodec.xcframework',
    'libavdevice.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavutil.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework'
  ]

  s.frameworks = [
    'AVFoundation',
    'AudioToolbox',
    'CoreMedia',
    'CoreVideo',
    'VideoToolbox'
  ]

  s.libraries = [
    'z',
    'bz2',
    'iconv',
    'c++'
  ]

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
