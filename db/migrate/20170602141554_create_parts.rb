class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.text :spec

      t.timestamps
    end
  end
end
