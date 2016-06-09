# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ultra_pending/version'

Gem::Specification.new do |spec|
  spec.name          = "ultra_pending"
  spec.version       = UltraPending::VERSION
  spec.authors       = ["Dennis Walters"]
  spec.email         = ["pooster@gmail.com"]

  spec.summary       = %q{The ultimate in "pending" test technology}
  spec.homepage      = "https://github.com/ess/ultra_pending"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|bin)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "simplecov", "~> 0.11"
end
