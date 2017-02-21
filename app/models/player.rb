class Player < ApplicationRecord

  belongs_to :user
  belongs_to :game
  has_one :hand
  has_one :principality

end
