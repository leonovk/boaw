# frozen_string_literal: true

require 'rake/testtask'
require_relative 'lib/boaw/version'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

task :build_and_push do
  puts "build boaw #{Boaw::VERSION}"
  system 'gem build boaw.gemspec'
  file_name = "boaw-#{Boaw::VERSION}.gem"
  system "gem push #{file_name} -k rubygems"
  File.delete(file_name)
  puts 'done'
end
