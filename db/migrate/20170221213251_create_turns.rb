class CreateTurns < ActiveRecord::Migration[5.0]
  def change
    create_table :turns do |t|
      t.integer :number
      t.string :phase

      t.timestamps
    end
  end
end
