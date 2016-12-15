class CreateDiscussions < ActiveRecord::Migration[5.0]
  def change
    create_table :discussions do |t|
      t.string :title, null: false
      t.integer :group_id, null: false

      t.timestamps
    end
  end
end
