# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create(code: 'SFO')
Airport.create(code: 'NYC')
Flight.create(start_id: 1, finish_id: 2, start_time: DateTime.new(2020, 10, 10, 9, 30, 0), duration: '5:25')
Flight.create(start_id: 1, finish_id: 2, start_time: DateTime.new(2020, 10, 11, 14, 55, 0), duration: '5:25')
Flight.create(start_id: 1, finish_id: 2, start_time: DateTime.new(2020, 10, 11, 19, 10, 0), duration: '5:25')
Flight.create(start_id: 2, finish_id: 1, start_time: DateTime.new(2020, 10, 10, 7, 0, 0), duration: '6:15')
Flight.create(start_id: 2, finish_id: 1, start_time: DateTime.new(2020, 10, 10, 21, 45, 0), duration: '6:15')
Flight.create(start_id: 2, finish_id: 1, start_time: DateTime.new(2020, 10, 11, 9, 20, 0), duration: '6:15')