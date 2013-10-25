# encoding: UTF-8
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require "rdoc/task"
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Carpentry'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

Bundler::GemHelper.install_tasks
