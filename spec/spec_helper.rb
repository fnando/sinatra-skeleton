ENV["RACK_ENV"] = "test"
require "app"

require "rack/test"

RSpec.configure do |config|
  module Helpers
    include Rack::Test::Methods

    def app
      Sinatra::Application
    end
  end

  config.include Helpers
end
