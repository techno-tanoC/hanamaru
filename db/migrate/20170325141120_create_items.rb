class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :title
      t.text :url
      t.boolean :archived

      t.timestamps
    end
  end
end
