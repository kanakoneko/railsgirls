class CreateIdea6s < ActiveRecord::Migration[7.0]
  def change
    create_table :idea6s do |t|
      t.string :name
      t.text :description
      t.integer :picture
      t.decimal :price
      t.float :table
      t.boolean :aaa
      t.date :eee
      t.datetime :kkk

      t.timestamps
    end
  end
end
