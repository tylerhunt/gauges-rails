require './lib/gauges/rails/version'

Gem::Specification.new do |gem|
  gem.name = 'gauges-rails'
  gem.version = Gauges::Rails::VERSION
  gem.author = 'Tyler Hunt'
  gem.summary = 'An engine to add Gauges tracking code to Rails apps.'
  gem.homepage = 'http://github.com/tylerhunt/gauges-rails'

  gem.required_ruby_version = '>= 1.9'

  gem.add_dependency 'rails', '~> 3.1'
  gem.add_development_dependency 'rspec', '~> 2.0'

  gem.files = `git ls-files`.split($\)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
