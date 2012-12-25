require 'bundler'
Bundler.require
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc 'Default: run specs'
task :default => :spec

task :cleanbuild do
  `cd ext/nilsimsa && ruby extconf.rb && make clean && rm Makefile`
  if RUBY_VERSION =~ /^1.9/
    `cd ext/nilsimsa && ruby extconf.rb && make`
  elsif RUBY_VERSION =~ /^1.8/
    `cd ext/nilsimsa && ruby extconf.rb && make`
  else
    puts "Ruby version #{RUBY_VERSION}? Can't help you.. "
  end
end
