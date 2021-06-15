require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "hello!"
end

get '/hello' do
  "hello back at ya"
end

get '/thatbread' do
  "payday tomorrow"
end

get '/just4lols' do
  @dev_state = ["linkedin", "facebook", "github", "pub"].sample
  erb(:index)
end



# Sinatra::Reloader