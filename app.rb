require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @Player1 = params[:Player1]
    @Player2 = params[:Player2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
