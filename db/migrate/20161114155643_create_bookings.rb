class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :equipment, foreign_key: true
      t.date :checkin
      t.date :checkout

      t.timestamps
    end
  end
end
