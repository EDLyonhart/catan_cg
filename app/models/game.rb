class Game < ApplicationRecord

  has_many :players
  has_one :gameboard
  has_one :turn

end
