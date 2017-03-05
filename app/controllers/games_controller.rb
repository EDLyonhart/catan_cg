class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(is_finished: false, current_turn: 0)

    if @game.save
      redirect_to @game
    else
      render 'new'
    end
  end

  def index
    @games = Game.all
  end

  def update
  end

  def show
    @game = Game.find(params[:id])

    if Game.players_by_name(@game.id).count != 2
      redirect_to new_player_path
    end
  end

  private

    def game_params
      params.permit( :is_finished, :current_turn )
    end
end