require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/reloader'
# require 'sinatra-contrib'

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader  
  end

#   get '/' do
#     'Testing infrastructure working!'
#   end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0

end
