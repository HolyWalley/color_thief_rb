# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rake/extensiontask"

task build: :compile

Rake::ExtensionTask.new("color_thief_rb") do |ext|
  ext.lib_dir = "lib/color_thief_rb"
end

task default: %i[compile spec]
