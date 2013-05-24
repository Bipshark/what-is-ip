require "sinatra"
require "mustache/sinatra"

register Mustache::Sinatra
require "./views/layout"

# Set mustache directories
set :mustache, {
    :templates  => "./templates",
    :views      => "./views"
}

# If fetched by cURL
get '/', :agent => /curl/ do
    @ip = request.env["REMOTE_ADDR"]
    @ip + "\n"
end

# If fetched by cURL and /n is passed, return IP without new line character
get '/n', :agent => /curl/ do
    @ip = request.env["REMOTE_ADDR"]
    @ip
end

# Default
get '/' do
    @ip = request.env["REMOTE_ADDR"]
    mustache :index
end