require "bundler"
Bundler.setup(:default, ENV.fetch("RACK_ENV", :development))
Bundler.require

# Inject Mustache views module.
module Views; end

require File.expand_path("../environment", __FILE__)

# Add directories to load path.
#
$LOAD_PATH.tap do |path|
  path << File.expand_path("../../app", __FILE__)
end

# Load all initializers. Files will be loaded in
# alphabetical order.
#
Dir[File.dirname(__FILE__) + "/initializers/**/*.rb"].each do |file|
  require file
end
