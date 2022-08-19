class AddFkToPassengers < ActiveRecord::Migration[7.0]
  def change
    remove_column :passengers, :bookings_id
    add_reference :passengers, :booking, index: true
    add_foreign_key :passengers, :bookings
  end
end
