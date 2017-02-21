class DiscardStack < ApplicationRecord

  belongs_to :gameboard
  has_many :cards

end
