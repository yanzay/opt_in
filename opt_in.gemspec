# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opt_in/version'

Gem::Specification.new do |spec|
  spec.name          = "opt_in"
  spec.version       = OptIn::VERSION
  spec.authors       = ["Alexey Grachov"]
  spec.email         = ["grachov.alexey@gmail.com"]
  spec.description   = %q{Wrapper for opt_in_service}
  spec.summary       = %q{Test for .PROMO}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
