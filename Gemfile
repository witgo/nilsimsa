source :rubygems

group :development do
  if RUBY_VERSION =~ /^1.9/
    gem "debugger", :require => "ruby-debug"
  else
    gem 'ruby-debug'
  end
end

group :test do
  gem "rspec"
  gem "rake"
end
