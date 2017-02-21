class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :expansion_stack_id
      t.integer :event_stack_id
      t.integer :resource_stack_id
      t.integer :discard_stack_id
      t.integer :player_id
      t.string :front_image
      t.string :back_image
      t.boolean :discarded
      t.boolean :in_play
      t.boolean :is_playable
      t.string :type

      t.timestamps
    end
  end
end
