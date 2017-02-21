class Gameboard < ApplicationRecord

  belongs_to :game
  has_many :principalities
  has_many :expansion_stacks
  has_one :event_stack
  has_one :discard_stack
  has_one :resource_stack

end
