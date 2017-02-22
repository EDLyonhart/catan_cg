class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path
    else
      render 'new'
    end
  end

  def update
  end

  def show
    @game = Game.find(params[:id])
  end

  private

    def game_params
      params.require(:game).permit( :is_finished, :current_turn )
    end
end
