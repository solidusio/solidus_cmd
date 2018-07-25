require 'bundler'
require 'rubocop/rake_task'

Bundler::GemHelper.install_tasks

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  RuboCop::RakeTask.new
  task default: %i(spec)
rescue LoadError
  warn "Error loading some rake tasks"
end
