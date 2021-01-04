class ScoresController < ApplicationController
   skip_before_action :verify_authenticity_token, only: :create

  def create
    @player = Player.find(params[:player_id])
    @score = Score.new(score_params)
    @score.player = @player
    if @score.save
      redirect_to game_path(@player.game, anchor: "game-#{@player.game.id}")
    else
      render 'games/show'
    end
  end

  private

  def score_params
    params.require(:score).permit(:score)
  end
end
