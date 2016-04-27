require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @attack = session[:attack]
    @player_2_hp = $player_2.hp
    erb :play
  end

  post '/attack' do
    session[:attack] = params[:attack]
    $game.attack $player_2
    redirect '/play'
  end

  run! if app_file == $0

end
