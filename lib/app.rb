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

get '/cat' do
  @nomenomen = ["My name is Cesare", "My surname is Camurani"].sample
  erb(:index)
end
