# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-neat/version'

Gem::Specification.new do |gem|
  gem.name          = "middleman-neat"
  gem.version       = MiddlemanNeat::VERSION
  gem.authors       = ["Patrik Wibron"]
  gem.email         = ["patrik@wibron.nu"]
  gem.description   = %q{Bourbon neat extension for Middleman}
  gem.summary       = %q{An extension for Middleman that will let you use Bourbon Neat for your projects}
  gem.homepage      = "http://patrikwibron.se/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "neat"
end