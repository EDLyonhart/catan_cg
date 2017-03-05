class Player < ApplicationRecord

  belongs_to :user
  belongs_to :game
  has_one :hand
  has_one :principality

  after_save :create_principalitie

  def create_principalitie
    @principality = Principality.create(gameboard_id: game.gameboard.id, player_id: self.id)
  end

end
