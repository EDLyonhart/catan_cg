class Game < ApplicationRecord

  has_many :players
  has_one :gameboard
  has_one :turn

  def find_players
    players = @game.players
    
    @player_1 = players[0]
    @player_2 = players[1]
  end

  def find_gameboard
    @gameboard = Gameboard.find(@game.id)
  end

end
