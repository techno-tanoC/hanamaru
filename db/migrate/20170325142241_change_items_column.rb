class ChangeItemsColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :archived, :boolean, null: false, default: false
  end
end
