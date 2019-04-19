# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Schedule.destroy_allss
# Appointment.destroy_all

first = Schedule.create(name: 'First')
sec = Schedule.create(name: 'Second')

Appointment.create(schedule_id: 1, start_time: 0, end_time: 1)
Appointment.create(schedule_id: 2, start_time: 0, end_time: 5)
Appointment.create(schedule_id: 2, start_time: 1, end_time: 3)
