require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:Player1], params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @Player1 = $game.Player1
    @Player2 = $game.Player2
    erb :play

  end

get '/attack' do
    @Player1 = $game.Player1
    @Player2 = $game.Player2
    $game.attack
    erb :attack
end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
