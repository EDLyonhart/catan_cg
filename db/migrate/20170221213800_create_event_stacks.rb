class CreateEventStacks < ActiveRecord::Migration[5.0]
  def change
    create_table :event_stacks do |t|
      t.text :card_ids

      t.timestamps
    end
  end
end
