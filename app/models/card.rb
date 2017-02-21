class Card < ApplicationRecord

  belongs_to :expansion_stack
  belongs_to :event_stack
  belongs_to :resource_stack
  belongs_to :discard_stack
  belongs_to :hand
  belongs_to :principality

end
