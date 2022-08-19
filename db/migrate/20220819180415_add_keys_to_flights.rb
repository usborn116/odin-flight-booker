class AddKeysToFlights < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :flights, :airports, column: :arrival_id
    add_foreign_key :flights, :airports, column: :depart_id
  end
end
