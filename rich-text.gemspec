lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rich-text/version'

Gem::Specification.new do |spec|
  spec.name          = 'rich-text'
  spec.version       = RichText::VERSION
  spec.authors       = ['Blake Thomson']
  spec.email         = ['thomsbg@gmail.com']

  spec.summary       = 'A ruby wrapper and utilities for rich text JSON documents.'
  spec.homepage      = 'https://github.com/voxmedia/rich-text-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.3.0'

  spec.add_dependency 'activesupport', '>= 7.1.3'
  spec.add_dependency 'diff-lcs', '>= 1.5.1'
  spec.add_dependency 'nokogiri', '>= 1.16.2'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'yard'
end
