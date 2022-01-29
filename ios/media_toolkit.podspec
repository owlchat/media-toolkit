#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint media_toolkit.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'media_toolkit'
  s.version          = '0.1.0'
  s.summary          = 'Owlchat Crypto Binding.'
  s.description      = <<-DESC
  A crypto library for the Owlchat app.
                       DESC
  s.homepage         = 'https://owl.chat'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Shady Khalifa' => 'shekohex@gmail.com' }
  s.source           = { :path => '.' }
  s.public_header_files = 'Classes**/*.h'
  s.source_files = 'Classes/**/*'
  s.static_framework = true
  s.vendored_libraries = "libowlchat_media_toolkit.a"
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
