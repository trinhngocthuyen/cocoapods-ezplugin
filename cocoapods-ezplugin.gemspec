lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-ezplugin"
  spec.version       = File.read("VERSION").strip
  spec.authors       = ["Thuyen Trinh"]
  spec.description   = "A CocoaPods plugin to reduce effort executing local plugin code in a project"
  spec.email         = ["trinhngocthuyen@gmail.com"]
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/trinhngocthuyen/cocoapods-ezplugin"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop"
end
