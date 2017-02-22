class Principality < ApplicationRecord

  belongs_to :gameboard
  belongs_to :player
  has_many :cards

  serialize :layout, Array

  def starting_layout

    self.layout = [
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: "available", first_up: "available", first_down: "available", second_up: nil, second_down: nil },
                    { center: "city", first_up: "available", first_down: "available", second_up: nil, second_down: nil },
                    { center: "road", first_up: "available", first_down: "available", second_up: nil, second_down: nil },
                    { center: "city", first_up: "available", first_down: "available", second_up: nil, second_down: nil },
                    { center: "available", first_up: "available", first_down: "available", second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil },
                    { center: nil, first_up: nil, first_down: nil, second_up: nil, second_down: nil }
                  ]
  end

end