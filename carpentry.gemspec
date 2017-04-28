# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "carpentry/version"

Gem::Specification.new do |s|
  s.name        = "carpentry"
  s.version     = Carpentry::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joao Carlos", "Vesa Vänskä", "Matias Korhonen", "Antti Salonen"]
  s.email       = ["contact@kiskolabs.com"]
  s.homepage    = "https://github.com/kiskolabs/carpentry"
  s.summary     = "Protyping engine for Rails."
  s.description = "Handcrafted prototypes for Rails."
  s.licenses    = ["MIT"]

  s.required_ruby_version = ">= 2.1.0"

  s.files = Dir["{app,lib,config}/**/*"] + ["Rakefile", "Gemfile", "README.md"]

  s.add_dependency("railties", ">= 4.2.0", "< 6.0")

  s.add_development_dependency "rdoc"
  s.add_development_dependency "rails", ">= 4.2.0", "< 6.0"
  s.add_development_dependency "capybara", "~> 2.13"
  s.add_development_dependency "autotest-standalone"
  s.add_development_dependency "rspec-rails", "~> 2.99"
end
