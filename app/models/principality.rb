class Principality < ApplicationRecord

  belongs_to :gameboard
  belongs_to :player
  has_many :cards

  serialize :layout, Array

  before_save :starting_layout

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

  def return_playable_principality

    to_show = []

    self.layout.each do |slot|
      if slot[:center] != nil  
        to_show << slot
      end  
    end 

    to_show
  end

end


