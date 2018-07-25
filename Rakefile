require 'bundler'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks
RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new

task default: %i(spec)
