# Load mustache views.
#
Dir[File.expand_path("../../../app/views/**/*.rb", __FILE__)].each do |file|
  require file
end
