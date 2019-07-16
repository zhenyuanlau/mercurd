require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "cucumber/rake/task"

RSpec::Core::RakeTask.new(:spec)

Cucumber::Rake::Task.new

Cucumber::Rake::Task.new('cucumber_progress') do |t|
  t.cucumber_opts = %w(--format progress)
end

task :default => :spec
