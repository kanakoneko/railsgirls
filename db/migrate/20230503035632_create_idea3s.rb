class CreateIdea3s < ActiveRecord::Migration[7.0]
  def change
    create_table :idea3s do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.decimal :price

      t.timestamps
    end
  end
end
