# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pair_device/version'

Gem::Specification.new do |spec|
  spec.name          = "pair_device"
  spec.version       = PairDevice::VERSION
  spec.authors       = ["Duke"]
  spec.email         = ["dukekhaos@gmail.com"]

  spec.summary       = %q{This gem help you to pair your ruby application with IoT devices.}
  spec.description   = %q{This gem help you to pair your ruby application with IoT devices.}
  spec.homepage      = "http://dukex.io/pair_device"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|.yardoc)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "redis", "~> 3.3"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "fakeredis"
end
