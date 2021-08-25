class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.time :time, null: false
      t.date :date, null: false
      t.integer :people, null: false
      t.text :remark
     
      t.timestamps
    end
  end
end
