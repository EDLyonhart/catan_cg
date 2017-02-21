class Principality < ApplicationRecord

  belongs_to :gameboard
  belongs_to :player
  has_many :cards

end
