class CreateHands < ActiveRecord::Migration[5.0]
  def change
    create_table :hands do |t|
      t.integer :player_id
      t.integer :hand_limit
      t.text :card_ids

      t.timestamps
    end
  end
end
