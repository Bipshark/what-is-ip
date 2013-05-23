require "sinatra"
require "mustache"

get '/' do
    "Your IP: " + request.env["REMOTE_ADDR"]
end
