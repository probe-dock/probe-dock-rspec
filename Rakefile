# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "probedock-rspec"
  gem.homepage = "https://github.com/probedock/probedock-rspec"
  gem.license = "MIT"
  gem.summary = %Q{RSpec client to publish test results to Probe Dock.}
  gem.description = %Q{RSpec client to publish test results to Probe Dock, a test tracking and analysis server.}
  gem.email = "simon.oulevay@gmail.com"
  gem.authors = ["Simon Oulevay (Alpha Hydrae)"]
  gem.files = Dir["lib/**/*.rb"] + %w(Gemfile LICENSE.txt README.md VERSION)
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

# version tasks
require 'rake-version'
RakeVersion::Tasks.new do |v|
  v.copy 'README.md'
  v.copy 'lib/probe_dock_rspec.rb'
end

require 'rspec/core/rake_task'
desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  #t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  # Put spec opts in a file named .rspec in root
end

task default: :spec
