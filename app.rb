require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @game = Game.new
    @game.attack($player_2)
    @player_1_hp = $player_1.hit_points
    @player_2_hp = $player_2.hit_points
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
