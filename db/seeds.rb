# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Bunker.destroy_all
User.destroy_all

puts "Creating users...."
User.create(first_name: "elizabeth", last_name: "creary", email: "elizabeth@lewagon.com", password: "123456", photo: "elizabeth.jpg")
User.create(first_name: "tzvi", last_name: "hamerman", email: "tzvi@lewagon.com", password: "123456", photo: "https://res.cloudinary.com/dhkwd88ag/image/upload/v1542308309/khq614bgneucpcob7xxz.png")
User.create(first_name: "sunny", last_name: "han", email: "sunny@lewagon.com", password: "123456", photo: "sunny.jpg")
User.create(first_name: "vinicius", last_name: "ishizaki", email: "vinicius@lewagon.com", password: "123456", photo: "vinicius.jpg")
puts "Done creating users"

