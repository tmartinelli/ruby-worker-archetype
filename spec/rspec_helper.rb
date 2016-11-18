ENV['APP_ENV'] = 'test'

require_relative '../config/setup'
require_all 'spec/support/*.rb'
require 'spec_helper'