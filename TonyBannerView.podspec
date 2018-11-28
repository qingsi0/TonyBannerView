Pod::Spec.new do |s|
s.name             = "TonyBannerView"
s.version          = "1.0"
s.summary          = "QZCrashLogManager Create bannerView quickly and concisely."
s.description      = <<-DESC
Create bannerView quickly and concisely.Create bannerView quickly and concisely.
DESC

s.homepage         = "https://github.com/qingsi0/TonyBannerView"
s.license          = {:type => 'MIT', :file => 'LICENSE'}
s.author           = { "qingsi0" => "yunfeiing@126.com" }
s.source           = { :git => "https://github.com/qingsi0/TonyBannerView.git", :tag => '1.0' }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'TonyBannerView/TonyBannerView/*.{h,m}'

# s.public_header_files = 'Pod/Classes/**/*.h'
s.frameworks = 'UIKit'
end
