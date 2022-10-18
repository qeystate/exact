# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exact/version'

Gem::Specification.new do |spec|
  spec.name          = 'exact'
  spec.version       = Exact::VERSION
  spec.authors       = ['zzk']
  spec.email         = ['zzk@chickenkiller.org']

  spec.summary       = 'Exact API handler'
  spec.description   = 'Exact API handler'
  spec.homepage      = 'https://github.com/zzk/exact'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'virtus', '~> 1.0.0'
  spec.add_dependency 'odata', '~> 0.7.0'
  spec.add_dependency 'activesupport', '~> 5.2.8'
  spec.add_dependency 'activemodel', '~> 5.2.8'

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.11.0'
  spec.add_development_dependency 'pry', '~> 0.14.1'
  spec.add_development_dependency 'factory_bot', '~> 6.2.1'
  spec.add_development_dependency 'vcr', '~> 6.1.0'
  spec.add_development_dependency 'faraday', '~> 2.6.0'
end
