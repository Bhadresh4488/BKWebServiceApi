#
# Be sure to run `pod lib lint BKWebServiceApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BKWebServiceApi'
  s.version          = '0.1.0'
  s.summary          = 'A subclass on web service call that provides a webapi.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'This CocoaPod provides the ability to use a api. User easy call get & post method.'

  s.homepage         = 'https://github.com/Bhadresh4488/BKWebServiceApi'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bhadresh4488' => 'bhadresh4488@gmail.com' }
  s.source           = { :git => 'https://github.com/Bhadresh4488/BKWebServiceApi.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

#s.ios.deployment_target = '8.0'

  s.source_files = 'BKWebServiceApi/Classes/**/*'

    s.platform     = :ios, "8.0"
  # s.resource_bundles = {
  #   'BKWebServiceApi' => ['BKWebServiceApi/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
