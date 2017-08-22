Pod::Spec.new do |s|
  s.name             = 'ChaihuTost'
  s.version          = '0.0.1'
  s.summary          = 'A short description of ChaihuTost.'

  s.description      = <<-DESC
     TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chaihu@jiayukang.com/ChaihuTost'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chaihu@jiayukang.com' => 'shanli@2dfire.com' }
  s.source           = { :git => 'https://github.com/chaihu@jiayukang.com/ChaihuTost.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ChaihuTost/Classes/**/*'
  
  # s.dependency 'AFNetworking', '~> 2.3'
end
