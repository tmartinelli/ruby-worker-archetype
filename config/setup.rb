require 'rubygems'
require 'bundler/setup'

require 'dotenv'
Dotenv.load

ENV['APP_ENV'] ||= 'development'

Bundler.require(:default, ENV['APP_ENV'].to_sym)

$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))

require 'active_support/all'

require_all 'config/initializers/*.rb'