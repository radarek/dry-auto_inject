# frozen_string_literal: true

# this file is synced from dry-rb/template-gem project

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dry/auto_inject/version"

Gem::Specification.new do |spec|
  spec.name          = "dry-auto_inject"
  spec.authors       = ["Piotr Solnica"]
  spec.email         = ["piotr.solnica@gmail.com"]
  spec.license       = "MIT"
  spec.version       = Dry::AutoInject::VERSION.dup

  spec.summary       = "Container-agnostic automatic constructor injection"
  spec.description   = spec.summary
  spec.homepage      = "https://dry-rb.org/gems/dry-auto_inject"
  spec.files         = Dir["CHANGELOG.md", "LICENSE", "README.md", "dry-auto_inject.gemspec", "lib/**/*"]
  spec.bindir        = "bin"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["changelog_uri"]     = "https://github.com/dry-rb/dry-auto_inject/blob/main/CHANGELOG.md"
  spec.metadata["source_code_uri"]   = "https://github.com/dry-rb/dry-auto_inject"
  spec.metadata["bug_tracker_uri"]   = "https://github.com/dry-rb/dry-auto_inject/issues"

  spec.required_ruby_version = ">= 2.7.0"

  # to update dependencies edit project.yml
  spec.add_runtime_dependency "dry-core", ">= 1.0.0.rc1", "< 2"
  spec.add_runtime_dependency "zeitwerk", "~> 2.6"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end