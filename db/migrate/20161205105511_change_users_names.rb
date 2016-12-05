class ChangeUsersNames < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
  end
end
