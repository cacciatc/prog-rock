# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prog-rock/version'

Gem::Specification.new do |gem|
  gem.name          = "prog-rock"
  gem.version       = Prog::Rock::VERSION
  gem.authors       = ["Chris Cacciatore"]
  gem.email         = ["chris.cacciatore@dullahansoft.com"]
  gem.description   = %q{Giving artist weight to your progressbars and making them super pretty.}
  gem.summary       = %q{A freeform collection of progressbars for your console.}
  gem.homepage      = "http://cacciatc.github.com/prog-rock"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
