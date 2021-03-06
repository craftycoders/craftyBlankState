#
# Be sure to run `pod lib lint craftyBlankState.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'craftyBlankState'
  s.version          = '1.0.1'
  s.summary          = 'Elegantly handle blank screens for iOS apps'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'CraftyBlankState lets you elegantly handle blank screens for iOS apps. Makes your iOS app look profressionally done even though the reality is you just finished iOS Developement 101 yesterday. Fully customizable to handle different cases with built-in defaults. Completely adaptive to all devices and screen sizes.'

  s.homepage         = 'https://github.com/craftycoders/craftyBlankState'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'craftycoders' => 'lyle@craftycoders.io' }
  s.source           = { :git => 'https://github.com/craftycoders/craftyBlankState.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_versions = '5.0'

  s.source_files = 'craftyBlankState/Classes/**/*'
  s.resources = 'craftyBlankState/Assets/*.xcassets'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
