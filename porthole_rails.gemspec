$:.push File.expand_path("../lib", __FILE__)

require "porthole_rails/version"

Gem::Specification.new do |s|
  s.name        = "porthole_rails"
  s.version     = PortholeRails::VERSION
  s.authors     = ["Denis Yahofarov"]
  s.email       = ["denyago@gmail.com"]
  s.homepage    = "http://github.com/denyago/porthole_rails"
  s.summary     = "Cross-domain communication, based on Porthole.js, for Rails"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0.0"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec-rails"
end
