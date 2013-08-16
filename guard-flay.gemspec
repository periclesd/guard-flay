# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/flay/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-flay"
  spec.version       = Guard::FlayVersion::VERSION
  spec.authors       = ["Péricles Dias"]
  spec.email         = ["pericles.dias@gmail.com"]
  spec.description   = "Guard::Flay automatically run flay."
  spec.summary       = "Guard gem for Flay"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_rubygems_version = '>= 2.0.6'
  spec.rubyforge_project         = 'guard-flay'

  spec.add_dependency 'guard', '>= 1.8'
  spec.add_dependency 'flay', '~> 2.4.0'
  spec.add_dependency 'flay-haml', '~> 0.0.3'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
