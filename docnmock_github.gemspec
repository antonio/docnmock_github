# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docnmock_github/version'

Gem::Specification.new do |spec|
  spec.name          = "docnmock_github"
  spec.version       = DocnmockGithub::VERSION
  spec.authors       = ["Antonio Santos"]
  spec.email         = ["antonio@santosvelasco.com"]
  spec.description   = %q{Document and mock Github's API using docnmock}
  spec.summary       = %q{Document and mock Github's API using docnmock}
  spec.homepage      = "https://github.com/antonio/docnmock_github"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'docnmock'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
