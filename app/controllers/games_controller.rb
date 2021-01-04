class GamesController < ApplicationController
  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render 'pages/home'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:sets, :legs, :type)
  end
end
