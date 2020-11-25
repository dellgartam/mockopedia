class ChangeShopForeignIndex < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :user_id, :integer
    change_table :users do |t|
      t.belongs_to :shop
    end
  end
end
