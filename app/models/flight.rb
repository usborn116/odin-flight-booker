class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "depart_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_id"
  has_many :bookings
end
