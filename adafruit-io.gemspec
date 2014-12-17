# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adafruit/io/version'

Gem::Specification.new do |spec|
  spec.name          = "adafruit-io"
  spec.version       = Adafruit::IO::VERSION
  spec.authors       = ["Justin Cooper"]
  spec.email         = ["justin@adafruit.com"]
  spec.summary       = %q{Adafruit IO API Client Library}
  spec.description   = %q{API Client Library for the Adafruit IO product}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = %w(LICENSE.md README.md Rakefile adafruit-io.gemspec)
  spec.files        += Dir.glob("lib/**/*.rb")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.licenses = ['MIT']

  spec.add_dependency "faraday", "~> 0.8.9"
  spec.add_dependency "faraday_middleware", "~> 0.9.0"
  spec.add_dependency "activesupport",  "~> 4.1.8"
  spec.add_dependency 'hashie'
  spec.add_dependency 'multi_xml'
  spec.add_dependency 'addressable', ['~> 2.3.5']

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end