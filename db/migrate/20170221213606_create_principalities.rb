class CreatePrincipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :principalities do |t|
      t.integer :gameboard_id
      t.text :layout

      t.timestamps
    end
  end
end
