# frozen_string_literal: true

require 'rails'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
ENV['RAILS_ROOT'] ||= "#{File.dirname(__FILE__)}../../../spec/dummy"
require File.expand_path('dummy/config/environment', __dir__)

require 'simplecov'
SimpleCov.start { add_filter '/spec' }

require 'pry'
require 'shoulda-matchers'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
