Pod::Spec.new do |s|

  # 框架名字
  s.name         = "LTTestLib"
  # 版本号
  s.version      = "0.0.2"
  # 简单描述
  s.summary      = "A Test Lib"
  # 框架描述：注意这里内容需要大于简单描述
  s.description  = "This lib is use for how to create a CocoaPods lib"
  # 地址 
  s.homepage     = "https://github.com/hongfenglt/LTTestLib"
  # 许可 刚刚选的是MIT
  s.license      = { :type => "MIT", :file => "LICENSE" }
  # 作者 => 邮箱
  s.author       = { "洪峰" => "hongfengkt@gmail.com" }
  # 最低支持版本
  s.platform     = :ios, "8.0"
  # 源码地址 后面tag会取上面的版本号
  s.source       = { :git => "https://github.com/hongfenglt/LTTestLib.git", :tag => "#{s.version}" }
  # 源码地址 这个Classes 就是我上面那个Classes目录
  # 如果你的项目中有图片获取其他资源也需要加进去 /.{png,bundle}
  # 这块如果不明白可以多看看其他项目的 .spec 怎么写的
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # 框架中中用到的framework
  s.framework  = "UIKit", "Foundation"
  # 框架中依赖中的其他 CocoaPods ，没有可以不写
  s.dependency "Reachability"

  # 如果你的项目很大，不区分文件夹会比较难找
  # 下面是设置子文件夹的方法
  # Controller 是文件夹名称
  s.subspec 'Controller' do |ss|
    # 源文件路径
    ss.source_files = 'Classes/Controller/*.{h,m}'
    # 头文件路径
    ss.public_header_files = 'Classes/Controller/*.h'
  end

  s.subspec 'View' do |ss|
    ss.source_files = 'Classes/View/*.{h,m}'
    ss.public_header_files = 'Classes/View/*.h'
  end

  s.subspec 'Model' do |ss|
    ss.source_files = 'Classes/Model/*.{h,m}'
    ss.public_header_files = 'Classes/Model/*.h'
  end

  s.subspec 'Service' do |ss|
    ss.source_files = 'Classes/Service/*.{h,m}'
    ss.public_header_files = 'Classes/Service/*.h'
  end


end
