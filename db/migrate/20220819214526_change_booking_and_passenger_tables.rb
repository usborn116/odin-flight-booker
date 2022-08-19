class ChangeBookingAndPassengerTables < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :passenger_id
    add_reference :passengers, :bookings, index: true
    add_foreign_key :bookings, :flights
  end
end
