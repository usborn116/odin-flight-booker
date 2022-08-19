class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :passenger_id
      t.string :flight_id

      t.timestamps
    end
  end
end
