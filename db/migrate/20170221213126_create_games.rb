class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.boolean :is_finished
      t.integer :current_turn

      t.timestamps
    end
  end
end
