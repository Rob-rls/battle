require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect to('/play')
  end

  get '/play' do
    p session
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
