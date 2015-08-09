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
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'virtus', '~> 1.0.3'
  spec.add_dependency 'ruby_odata', '~> 0.1.6'
  spec.add_dependency 'activesupport', '~> 4.2.3'
  spec.add_dependency 'activemodel', '~> 4.2.3'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency 'pry', '~> 0.10.1'
  spec.add_development_dependency 'factory_girl', '~> 4.5.0'
  spec.add_development_dependency 'vcr', '~> 2.9.3'
end
