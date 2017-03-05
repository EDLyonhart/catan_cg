class AddGameIdToTurns < ActiveRecord::Migration[5.0]
  def change
    add_column :turns, :game_id, :integer
  end
end
