RACK_ENV = "test"
require_relative File.join("..", "web.rb")
require "rack/test"
require "rspec"
require 'webmock/rspec'
include WebMock::API
include WebMock::Matchers

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

