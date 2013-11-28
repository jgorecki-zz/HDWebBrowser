Pod::Spec.new do |s|
  s.name     = 'HDWebBrowser'
  s.version  = '1.0'
  s.license  = 'MIT'
  s.summary  = 'A simple browser.'
  s.homepage = 'https://github.com/jgorecki/HDWebBrowser'
  s.author   = { 'Joe Gorecki' => 'j@harbordev.com' }
  s.source   = { :git => 'https://github.com/jgorecki/HDWebBrowser',:branch=>'master', :tag => '1.0.2' }
  s.description  = 'Just a simple web browser for presenting in iOS.  Testing creating a pod.'
  s.source_files = 'HDWebBrowser/HDWebBrowserViewController/*.{h,m,xib}'
  s.requires_arc = true
end