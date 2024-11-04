# frozen_string_literal: true

require_relative "lib/concurrent-enum/version"

Gem::Specification.new do |spec|
  spec.name = "concurrent-enum"
  spec.version = ConcurrentEnum::VERSION
  spec.authors = ["Arthur Hess"]
  spec.email = ["arthess@gmail.com"]

  spec.summary = "Concurrent map for Enumerable"
  spec.description = "A concurrent map for Enumerable using concurrent-ruby"
  spec.homepage = "https://github.com/arthurhess/concurrent-enum"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/arthurhess/concurrent-enum"

  spec.files = `git ls-files`.split("\0").reject { |f| f.match(%r{^\.gitignore$}) }
  spec.require_paths = ["lib"]
  spec.add_dependency "concurrent-ruby", "~> 1.3.4"
end
