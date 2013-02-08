require "bundler/gem_tasks"

require File.expand_path('../lib/middleman-neat/version', __FILE__)

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end

desc "Build gem locally"
task :gem => :build
task :build do
  system "gem build middleman-neat.gemspec"
end

desc "Install gem locally"
task :install => :build do
  system "gem install pkg/#{gemspec.name}-#{gemspec.version}"
end