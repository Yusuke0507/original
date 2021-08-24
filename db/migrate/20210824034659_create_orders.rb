class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :product_name, null: false
      t.integer :product_price, null: false
      t.references :user, null: false, foreign_key: true
      t.text :text, null: false
      t.timestamps
    end
  end
end
