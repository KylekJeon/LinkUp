class ChangeCategoryGroups < ActiveRecord::Migration[5.0]
  def change
    change_column_null :groups, :category, null: false
  end
end
