require "./config/boot"

get "/" do
  mustache "index"
end
