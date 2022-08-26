class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :depart_id
      t.integer :arrival_id
      t.datetime :start
      t.integer :duration_hrs

      t.timestamps
    end
  end
end
