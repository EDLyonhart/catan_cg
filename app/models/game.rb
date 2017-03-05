class Game < ApplicationRecord

  require 'pry'

  has_many :players
  has_one :gameboard
  has_one :turn

  after_save :create_gameboard
  after_save :create_turn

  def create_gameboard
    Gameboard.create(game_id: self.id, remaining_settlements: 5, remaining_cities: 7, remaining_roads: 7)
  end

  def create_turn
    Turn.create(game_id: self.id, number: 0, phase: "roll")
  end


  def self.players_by_name(game_id)
    @users = User.all
    @players = Player.all
    names = Array.new

    @players.each do |player|
      if player.game_id == game_id
        user = User.find(player.user_id)
        names << user.name
      end
    end

    names
  end

end
