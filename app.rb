require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    #form here
    erb :index
  end

  post '/names' do
    "hello world"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
