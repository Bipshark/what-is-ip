require "sinatra"
require "mustache"

set :bind, '0.0.0.0'

get '/' do
    "Your IP: " + request.env["REMOTE_ADDR"] + "\n"
end
