class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :writer
      t.string :preview
      t.string :url

      t.timestamps null: false
    end
  end
end
