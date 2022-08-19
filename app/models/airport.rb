class Airport < ApplicationRecord
    has_many :arriving_flights, class_name: 'Flight', foreign_key: 'arrival_id'
    has_many :departing_flights, class_name: 'Flight', foreign_key: 'depart_id'

end
