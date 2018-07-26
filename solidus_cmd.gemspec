# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_cmd/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_cmd'
  s.version     = SolidusCmd::VERSION
  s.authors     = 'Solidus Team'
  s.email       = 'contact@solidus.io'
  s.homepage    = 'http://solidus.io'
  s.license     = 'BSD-3-Clause'
  s.summary     = 'Solidus command line utility'
  s.description = 'tools to create new Solidus extensions'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.bindir        = 'bin'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'byebug'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop', '>= 0.38'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  # Temporary hack until https://github.com/wycats/thor/issues/234 is fixed
  s.add_dependency 'thor', '~> 0.14'
end
