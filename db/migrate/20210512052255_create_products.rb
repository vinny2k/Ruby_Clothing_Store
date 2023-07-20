class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price, null: false, precision: 15, scale: 2 
      t.integer :rating

      t.timestamps
    end
  end
end
