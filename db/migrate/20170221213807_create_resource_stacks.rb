class CreateResourceStacks < ActiveRecord::Migration[5.0]
  def change
    create_table :resource_stacks do |t|
      t.text :card_ids

      t.timestamps
    end
  end
end
