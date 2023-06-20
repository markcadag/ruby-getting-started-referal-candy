class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :product_name
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
