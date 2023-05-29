class CreateIdea2s < ActiveRecord::Migration[7.0]
  def change
    create_table :idea2s do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :table

      t.timestamps
    end
  end
end
