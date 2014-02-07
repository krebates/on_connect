# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'on_connect/version'

Gem::Specification.new do |spec|
  spec.name          = "on_connect"
  spec.version       = OnConnect::VERSION
  spec.authors       = ["Krystle"]
  spec.email         = ["krebates@gmail.com"]
  spec.summary       = %q{API Wrapper for OnConnect}
  spec.description   = %q{API Wrapper for OnConnect using Faraday, VCR, and RSpec}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency 'faraday'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'vcr'


end
