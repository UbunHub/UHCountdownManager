

Pod::Spec.new do |s|
  s.name             = 'UHCountdownManager'
  s.version          = '0.0.1'
  s.summary          = 'UHCountdownManager'
  s.description      = <<-DESC
TODO: UHCountdownManager.
                       DESC

    s.homepage         = 'https://github.com/gawaxiaoqiang'
    s.license          = { :type => 'MIT' }
    s.author           = { '静静地白色外套' => '296019487@qq.com' }
    s.source           = { :git => 'https://github.com/gawaxiaoqiang', :tag => '0.0.1' }
    s.ios.deployment_target = '6.0'
    s.resource  = "**/*.{podspec,md}"
    s.source_files = '**/*.{h,m}'

end
