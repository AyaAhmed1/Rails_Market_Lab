class AddProductsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :products_users do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end 
  end
end
