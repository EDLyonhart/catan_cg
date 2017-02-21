class CreateGameboards < ActiveRecord::Migration[5.0]
  def change
    create_table :gameboards do |t|
      t.integer :game_id
      t.integer :remaining_settlements
      t.integer :remaining_cities
      t.integer :remaining_roads

      t.timestamps
    end
  end
end
