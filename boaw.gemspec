# frozen_string_literal: true

require_relative 'lib/boaw/version'

Gem::Specification.new do |s|
  s.name        = 'boaw'
  s.version     = Boaw::VERSION
  s.summary     = 'Mouse manipulation library'
  s.description = 'The library will allow you to create auto-clickers for Unix systems'
  s.authors     = ['Kirill Leonov']
  s.email       = 'leonov7632@gmail.com'
  s.files       = Dir.glob('lib/**/*')
  s.homepage    = 'https://github.com/leonovk/boaw'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 3.1.0'
  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = s.homepage
  s.metadata['documentation_uri'] = s.homepage
end
