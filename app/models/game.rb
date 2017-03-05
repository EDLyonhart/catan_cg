class Game < ApplicationRecord

  has_many :players
  has_one :gameboard
  has_one :turn


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
