class ExpansionStack < ApplicationRecord

  belongs_to :gameboard
  has_many :cards
  
end
