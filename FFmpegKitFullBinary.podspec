Pod::Spec.new do |s|
  s.name             = 'FFmpegKitFullBinary'
  s.version          = '6.0.0.2'
  s.summary          = 'Self-hosted FFmpegKit full binary distribution for iOS.'
  s.description      = <<-DESC
A self-hosted CocoaPods wrapper around prebuilt FFmpegKit full XCFramework binaries,
intended for internal use after official FFmpegKit binary distribution was discontinued.
  DESC

  s.homepage         = 'https://github.com/xiaoniuniuaihenai/FFmpeg'
  s.license          = { :type => 'LGPL-3.0-or-later' }
  s.author           = { 'xiaoniuniuaihenai' => 'xiaoniuniuaihenai@users.noreply.github.com' }

  s.source           = { :git => 'https://github.com/xiaoniuniuaihenai/FFmpeg.git', :tag => s.version.to_s }

  s.platform         = :ios, '12.1'
  s.swift_version    = '5.0'
  s.requires_arc     = true
  s.static_framework = true

  s.vendored_frameworks = [
  'ffmpeg-kit-ios-full/ffmpegkit.xcframework',
  'ffmpeg-kit-ios-full/libavcodec.xcframework',
  'ffmpeg-kit-ios-full/libavdevice.xcframework',
  'ffmpeg-kit-ios-full/libavfilter.xcframework',
  'ffmpeg-kit-ios-full/libavformat.xcframework',
  'ffmpeg-kit-ios-full/libavutil.xcframework',
  'ffmpeg-kit-ios-full/libswresample.xcframework',
  'ffmpeg-kit-ios-full/libswscale.xcframework'
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
