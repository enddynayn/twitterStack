ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'mixlib/config'

if Gem::Specification.find_all_by_name('dotenv').any?
  require 'dotenv'
  Dotenv.load
end


require File.expand_path('../settings', __FILE__)
