class GamesController < ApplicationController
  def create
    @game = Game.new(game_params)
    if @game.save
      create_players
      redirect_to game_path(@game)
    else
      render 'pages/home'
    end
  end

  def show
    @game = Game.find(params[:id])
    @players = @game.players
    @score = Score.new
  end

  private

  def create_players
    Player.create(name: player_params[:player_1][:name], game: @game)
    Player.create(name: player_params[:player_2][:name], game: @game)
    Player.create(name: player_params[:player_3][:name], game: @game)
    Player.create(name: player_params[:player_4][:name], game: @game)
  end

  def game_params
    params.require(:game).permit(:sets, :legs, :game_type)
  end

  def player_params
    params.require(:game).permit(player_1: [:name], player_2: [:name], player_3: [:name], player_4: [:name])
  end
end
