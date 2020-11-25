class AddUserShopsAndCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.belongs_to :user
    end
  end
end
