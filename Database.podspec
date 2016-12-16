#
#  Be sure to run `pod spec lint Database.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "Database"
  s.version      = "1.0.0"
  s.summary      = "based on fmdb"
  s.description  = <<-DESC
			基于FMDB以及RunTime封装的数据存储机制
                   DESC
  s.homepage     = "https://github.com/LiuHuaJiao/HJDatabase.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "liuhuajiao" => "huajiao1990@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/LiuHuaJiao/HJDatabase.git", :tag => "1.0.0" }
  s.source_files = "Database/Database/HJDatabase","Database/Database/HJDatabase/*.{h,m}"
  s.framework    = "UIkit","Foundation"
  s.library      = "sqlite3.0"
  s.xcconfig     = {"CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES"}
  s.requires_arc = true
  s.dependency "FMDB"

end
