# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kladr_api_integration/version'

Gem::Specification.new do |spec|
  spec.name          = 'kladr_api_integration'
  spec.version       = KladrApiIntegration::VERSION
  spec.authors       = ['Dmitriy Lisichkin']
  spec.email         = ['dima@sb42.ru']
  spec.summary       = %q{Backend for kladr-api.ru service}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/tab10id/kladr_api_integration'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rails', '~> 3.2.12'
end
