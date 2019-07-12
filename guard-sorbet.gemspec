# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'guard-sorbet'
  spec.version = '0.0.1'
  spec.authors = ['Bradley Buda']
  spec.summary = 'Guard plugin for Sorbet'
  spec.license = 'MIT'
  spec.homepage = 'https://getcensus.com'
  spec.files = `git ls-files -z`.split("\x0")

  spec.add_runtime_dependency 'guard', '~> 2.0'
  spec.add_runtime_dependency 'sorbet', '~> 0.4.0'
  spec.add_runtime_dependency 'sorbet-runtime', '~> 0.4.0'
end
