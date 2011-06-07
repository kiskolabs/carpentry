# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "carpentry/version"

Gem::Specification.new do |s|
  s.name = "carpentry"
  s.version = Carpentry::VERSION
  s.authors = ["Joao Carlos", "Vesa Vänskä", "Matias Korhonen", "Antti Salonen"]
  s.email = ["contact@kiskolabs.com"]
  s.homepage = "https://github.com/kiskolabs/carpentry"
  s.summary = "Protyping engine for Rails."
  s.description = "Handcrafted prototypes for Rails."
  s.files = Dir["{app,lib,config}/**/*"] + ["Rakefile", "Gemfile", "README.md"]
end
