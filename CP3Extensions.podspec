Pod::Spec.new do |s|
  s.name             = "CP3Extensions"
  s.version          = "1.0"
  s.summary          = "Swift/iOS utilities + extensions"
  s.homepage         = "https://github.com/"
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { "Corné" => "cdriesprong@gmail.com" }
  s.source           = { :git => "https://github.com/cornedriesprong/CP3Extensions.git", :tag => s.version }
  s.platform         = :ios, '10.0'
  s.requires_arc     = true
  s.source_files     = 'CP3Extensions/*'
  s.subspec 'RxSwift' do |ss|
  s.subspec 'RxCocoa' do |ss|
end
