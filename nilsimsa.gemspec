# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nilsimsa/version', __FILE__)
SPEC = Gem::Specification.new do |spec|
  # Descriptive and source information for this gem.
  spec.name = "nilsimsa"
  spec.version = Nilsimsa::VERSION
  spec.summary = "Computes Nilsimsa values.  Nilsimsa is a distance based hash"
  spec.author = "Jonathan Wilkins"
  spec.email = "jwilkins[at]nospam[dot]bitland[dot]net"
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README.md"]

  spec.files = `git ls-files README.md .gitignore .travis.yml Gemfile Rakefile bin ext lib nilsimsa.gemspec`.split 
  spec.test_files = `git ls-files spec examples`.split
  # spec.files = %w(Gemfile Rakefile README.md nilsimsa.gemspec
  #                 lib/nilsimsa.rb
  #                 bin/nilsimsa
  #                 examples/simple.rb
  #                 ext/extconf.rb ext/nilsimsa.c)
  spec.executables = ['nilsimsa']

  # optional native component
  spec.extensions = ['ext/nilsimsa/extconf.rb']
end
