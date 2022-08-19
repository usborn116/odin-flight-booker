# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.create(code: 'SAN')
Airport.create(code: 'HNL')
Airport.create(code: 'PDX')

Flight.create(start: Date.new(2030, 6, 10), depart_id: 1, arrival_id: 2, duration_hrs: 4)
Flight.create(start: Date.new(2030, 6, 11), depart_id: 1, arrival_id: 2, duration_hrs: 4)

Flight.create(start: Date.new(2030, 7, 10), depart_id: 1, arrival_id: 3, duration_hrs: 6)
Flight.create(start: Date.new(2030, 7, 11), depart_id: 1, arrival_id: 3, duration_hrs: 6)

Flight.create(start: Date.new(2030, 8, 10), depart_id: 2, arrival_id: 1, duration_hrs: 3)
Flight.create(start: Date.new(2030, 8, 11), depart_id: 2, arrival_id: 1, duration_hrs: 3)

Flight.create(start: Date.new(2030, 9, 10), depart_id: 2, arrival_id: 3, duration_hrs: 2)
Flight.create(start: Date.new(2030, 9, 11), depart_id: 2, arrival_id: 3, duration_hrs: 2)

Flight.create(start: Date.new(2030, 10, 10), depart_id: 3, arrival_id: 1, duration_hrs: 5)
Flight.create(start: Date.new(2030, 10, 11), depart_id: 3, arrival_id: 1, duration_hrs: 5)

Flight.create(start: Date.new(2030, 11, 10), depart_id: 3, arrival_id: 2, duration_hrs: 7)
Flight.create(start: Date.new(2030, 11, 11), depart_id: 3, arrival_id: 2, duration_hrs: 7)