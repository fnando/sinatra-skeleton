# Set the root directory.
#
set :root, File.expand_path("../..", __FILE__)

# Set the public directory.
#
set :public_folder, File.expand_path("../../public", __FILE__)

# Configure mustache.
#
set :mustache, {
  views: File.expand_path("../../app/views", __FILE__),
  templates: File.expand_path("../../app/templates", __FILE__),
  layout: "layouts/default",
  namespace: Views
}

# Set the views directory.
# Just in case you want to use a different template engine.
#
set :views, File.expand_path("../../templates", __FILE__)

# Serve static files from the public directory.
#
set :static, true

# Enable session support.
#
set :sessions, true

# Enable logging.
#
set :logging, true

# Dump errors only in development mode.
#
set :dump_errors, Sinatra::Base.development?

# Raise errors only in development mode.
#
set :raise_errors, Sinatra::Base.development?
