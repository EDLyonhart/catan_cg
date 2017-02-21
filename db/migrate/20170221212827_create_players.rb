class CreatePlayers < ActiveRecord::Migration[5.0]
  def change

    drop_table :players

    create_table :players do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :victory_points

      t.timestamps
    end
  end
end
