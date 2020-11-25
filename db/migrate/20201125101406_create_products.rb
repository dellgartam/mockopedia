class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.belongs_to :shop
      t.string :name
      t.integer :price
      t.text :description
      t.integer :stock
      t.timestamps
    end
  end
end
