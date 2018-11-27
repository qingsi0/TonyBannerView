Pod::Spec.new do |s|
s.name             = "TonyBannerView"
s.version          = "1.0"
s.summary          = "QZCrashLogManager Create bannerView quickly and concisely."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
s.description      = <<-DESC
Create bannerView quickly and concisely.Create bannerView quickly and concisely.
DESC

s.homepage         = "https://github.com/qingsi0/TonyBannerView.git"
# s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
s.license          = 'MIT'
s.author           = { "qingsi0" => "yunfeiing@126.com" }
s.source           = { :git => "https://github.com/qingsi0/TonyBannerView.git", :tag => '1.0' }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'TonyBannerView/TonyBannerView/*'

# s.public_header_files = 'Pod/Classes/**/*.h'
s.frameworks = 'UIKit'
end
