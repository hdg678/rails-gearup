class RemoveCheckinFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :checkin, :date
    remove_column :bookings, :checkout, :date
  end
end
