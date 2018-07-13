require "sinatra"

instance = `hostname`

get "/" do
  sleep 0.1
  "Hello World! This comes From the instance: #{instance}"
end
