Pod::Spec.new do |s|

s.name = "WebEngage"
s.version = "1.1.22"
s.summary = "WebEngage framework helps bring the world of Marketing Automation to your App."
print s.version
s.description = <<-DESC
This framework allows the iOS apps to interact with App Engage for User Analytics and Customer Engagement via Push and In-App notifications.
DESC

s.homepage = "https://webengage.com"
s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Saumitra R. Bhave" => "saumitra.bhave@gmail.com",
             "Arpit Agrawal" => "arpit@webklipper.com" }
s.social_media_url = "http://twitter.com/webengage"
s.source = { :http => "https://s3-us-west-2.amazonaws.com/webengage-sdk/ios/" + s.version.version + "/WebEngageFramework.zip"}
s.platform = :ios, "7.0"
s.frameworks = 'Foundation', 'CoreLocation'
s.libraries = 'sqlite3'

s.requires_arc = true

s.subspec 'Xcode7' do |xc7|
  	xc7.source_files = "WebEngage-xc7.framework/Headers/*.h"
	xc7.public_header_files = "WebEngage-xc7.framework/Headers/*.h"
	xc7.ios.vendored_frameworks = "WebEngage-xc7.framework"
end

s.subspec 'Xcode6' do |xc6|
  	xc6.source_files = "WebEngage-xc6.framework/Headers/*.h"
	xc6.public_header_files = "WebEngage-xc6.framework/Headers/*.h"
	xc6.ios.vendored_frameworks = "WebEngage-xc6.framework"
end

s.default_subspec = 'Xcode7'
end
