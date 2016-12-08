class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :event_time, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.integer :group_id, null: false

      t.timestamps
    end
  end
end
