require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require './models/Game'

get '/' do
  erb(:play)
end

get '/rules' do
  erb(:rules)
end

get '/about' do
  erb(:about)
end

get '/rock' do
  game = Game.new()
  @result = game.rock()
  erb( :result )
end

get '/paper' do
  game = Game.new()
  @result = game.paper()
  erb(:result)
end

get '/scissors' do
  game = Game.new()
  @result = game.scissors
  erb(:result)
end



