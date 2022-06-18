# frozen_string_literal: true

require_relative 'lib/translator/version'

Gem::Specification.new do |spec|
  spec.name                     = 'translator'
  spec.version                  = Translator::VERSION
  spec.authors                  = ['Rinzin Dorji']
  spec.email                    = ['rd@selise.ch']
  spec.homepage                 = 'https:://www.github.com/rnzdoj/translator'
  spec.summary                  = 'A simple translation gem'
  spec.description              = 'Translator enables you to translate any text according to your needs'
  spec.license                  = 'MIT'
  spec.platform                 = Gem::Platform::RUBY
  spec.required_ruby_version    = Gem::Requirement.new('>= 3.0.3')
  spec.files                    = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'faraday', '~> 2.3.0'
  spec.add_dependency 'faraday-net_http', '~> 2.0.3'

  spec.add_development_dependency 'brakeman', '~> 5.2.3'
  spec.add_development_dependency 'bundle-audit', '~> 0.1.0'
  spec.add_development_dependency 'codecov', '~> 0.1'
  spec.add_development_dependency 'dotenv', '~> 2.5'
  spec.add_development_dependency 'pry', '~> 0.14.1'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 1.30.1'
  spec.add_development_dependency 'rubocop-performance', '~> 1.14.2'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.11.1'
  spec.add_development_dependency('rubycritic', '~> 4.6.1')
  spec.add_development_dependency('shoulda-matchers', '~> 5.0.0')
  spec.add_development_dependency 'simplecov', '~> 0.16'
  spec.add_development_dependency('test-prof', '~> 1.0.5')
  spec.metadata['rubygems_mfa_required'] = 'true'
end
