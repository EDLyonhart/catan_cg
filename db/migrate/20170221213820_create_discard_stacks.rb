class CreateDiscardStacks < ActiveRecord::Migration[5.0]
  def change
    create_table :discard_stacks do |t|
      t.text :card_ids

      t.timestamps
    end
  end
end
