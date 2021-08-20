class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.time :time, null: false
      t.date :date, null: false
      t.integer :people, null: false
      t.integer :price_id, null: false
      t.integer :menu_id, null: false
      t.timestamps
    end
  end
end
