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

get '/randomlols' do
  @name = ["linkedin", "facebook", "github", "pub"].sample
  erb(:index)
end

get '/namedlols' do
  p params
  @name = params[:name]
  erb(:index)
end


# Sinatra::Reloader