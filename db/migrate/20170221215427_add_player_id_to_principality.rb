class AddPlayerIdToPrincipality < ActiveRecord::Migration[5.0]
  def change
    add_column :principalities, :player_id, :integer
  end
end
