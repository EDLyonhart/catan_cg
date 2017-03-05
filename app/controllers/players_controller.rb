class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      # log_in player
      redirect_to game_path(Player.last.game_id)
    else
      redirect_to game_path(Player.last.game_id)
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def update
  end

  private

  def player_params
    params.require(:player).permit( :user_id, :game_id, :victory_points )
  end
end
