# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'guard-sorbet'
  spec.version = '0.5.0'
  spec.authors = ['Bradley Buda']
  spec.summary = 'Guard plugin for the Sorbet Ruby type checker'
  spec.license = 'MIT'
  spec.homepage = 'https://github.com/sutrolabs/guard-sorbet'
  spec.files = `git ls-files -z`.split("\x0")

  spec.add_runtime_dependency 'guard', '~> 2.0'
  spec.add_runtime_dependency 'guard-compat', '~> 1.0'
  spec.add_runtime_dependency 'sorbet', '~> 0.5.0'
  spec.add_runtime_dependency 'sorbet-runtime', '~> 0.5.0'
end
