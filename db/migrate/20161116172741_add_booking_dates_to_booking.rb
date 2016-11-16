class AddBookingDatesToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :pickup, :date
    add_column :bookings, :dropoff, :date
  end
end
