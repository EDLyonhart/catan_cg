class GameboardsController < ApplicationController
 
  def new
    @gameboard = Gameboard.new
  end

  def create
    @gameboard = Gameboard.new(gameboard_params)
    if @gameboard.save
      redirect_to @gameboard
    else
      render 'new'
    end
  end

  def update
  end

  def show
    @gameboard = Gameboard.find(params[:id])
  end

  private

  def gameboard_params
    params.require(:gameboard).permit( :game_id, :remaining_settlements, 
                                    :remaining_citys, :remaining_roads )
  end

end