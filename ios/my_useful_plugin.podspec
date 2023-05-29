#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint my_useful_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'my_useful_plugin'
  s.version          = '0.0.1'
  s.summary          = "Walter's first plugin"
  s.description      = <<-DESC
Walter's first plugin
                       DESC
  s.homepage         = 'https://github.com/shinytruth'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Walter Dev Kor.' => 'shinytruth.dev@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'BSImagePicker', '~> 3.1'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
