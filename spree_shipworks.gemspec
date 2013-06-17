# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_shipworks'
  s.version     = '1.3.2'
  s.summary     = 'Spree ShipWorks'
  s.description = "This project implements the ShipWorks 3.0 API endpoint as defined in 'ShipWorks 3.0: Store Integration Guide: version 1.0'."
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'M. Scott Ford'
  s.authors    = ['M. Scott Ford']
  s.email     = 'scott@railsdog.com'
  s.homepage  = 'http://railsdog.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.2'
  s.add_dependency 'nokogiri', '~> 1.6.0'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
