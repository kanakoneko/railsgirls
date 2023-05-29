class CreateIdea5s < ActiveRecord::Migration[7.0]
  def change
    create_table :idea5s do |t|
      t.string :name
      t.text :description
      t.integer :picture
      t.decimal :price

      t.timestamps
    end
  end
end
