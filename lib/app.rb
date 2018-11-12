require 'sinatra'
require 'shotgun'

get '/' do
  "Hello World"
end

get '/secret' do
  "Ciao Cesare!"
end

get '/dunnot_touch!' do
  "For my eyes only"
end

get '/victoria_secret' do
  "Ciao Luca Francesco Eto!"
end

get '/random-cat' do
  @names = ["Cesare", "Luca", "Mirko", "Pablo"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end
