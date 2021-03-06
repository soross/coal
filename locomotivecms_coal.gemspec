require_relative 'lib/locomotive/coal/version'

Gem::Specification.new do |spec|
  spec.name          = 'locomotivecms_coal'
  spec.version       = Locomotive::Coal::VERSION
  spec.authors       = ['Didier Lafforgue']
  spec.email         = ['didier@nocoffee.fr']
  spec.description   = %q{The LocomotiveCMS Coal is the API ruby client for the LocomotiveCMS platform}
  spec.summary       = %q{The LocomotiveCMS Coal is the API ruby client for the LocomotiveCMS platform}
  spec.homepage      = 'https://github.com/locomotivecms/coal'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',    '~> 1.16.1'
  spec.add_development_dependency 'rake',       '~> 12.3.0'

  spec.add_dependency 'httpclient',             '~> 2.8.3'
  spec.add_dependency 'faraday',                '~> 0.14.0'
  spec.add_dependency 'faraday_middleware',     '~> 0.12.2'
  spec.add_dependency 'activesupport',          '~> 5.1.5'

  spec.required_ruby_version = '>= 2.0'
end
