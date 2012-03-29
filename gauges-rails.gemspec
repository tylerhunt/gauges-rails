# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gauges/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Tyler Hunt']
  gem.email         = ['tyler@tylerhunt.com']
  gem.description   = %q{An engine to add Gauges tracking code to Rails apps.}
  gem.summary       = %q{An engine to add Gauges tracking code to Rails apps.}
  gem.homepage      = 'http://github.com/tylerhunt/gauges-rails'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'gauges-rails'
  gem.require_paths = ['lib']
  gem.version       = Gauges::Rails::VERSION

  gem.add_dependency 'rails', '~> 3.1'
  gem.add_development_dependency 'rspec', '~> 2.0'
end
