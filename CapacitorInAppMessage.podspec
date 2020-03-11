
  Pod::Spec.new do |s|
    s.name = 'CapacitorInAppMessage'
    s.version = '0.0.2'
    s.summary = 'Firebase in app messaging'
    s.license = 'MIT'
    s.homepage = 'https://github.com/hatsa-com/capacitor-in-app-message'
    s.author = 'Hatsa'
    s.source = { :git => 'https://github.com/hatsa-com/capacitor-in-app-message', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
    s.dependency 'Firebase/Core'
  end