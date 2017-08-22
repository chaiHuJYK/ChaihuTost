Pod::Spec.new do |s|
  s.name             = 'ChaihuTost'
  s.version          = '0.0.1'
  s.summary          = '显示提示菊花'

  s.description      = <<-DESC
                    显示提示菊花。
                       DESC

  s.homepage         = 'https://github.com/chaiHuJYK/ChaihuTost'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chaihu@jiayukang.com' => 'shanli@2dfire.com' }
  s.source           = { :git => 'https://github.com/chaiHuJYK/ChaihuTost.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ChaihuTost/Classes/**/*'
  
  # s.dependency 'AFNetworking', '~> 2.3'
end
