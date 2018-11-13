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

owners = [] # there will be 10 owners
borrowers = [] # there will be 10 borrowers
bunkers = [] # there will be 10 bunkers

puts "Creating Owners"
10.times do
  owner = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
  owner.save
  owners << owner
end

puts "Creating Borrowers"
10.times do
  borrower = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
  borrower.save
  borrowers << borrower
end

puts "Creating Bunkers"
owners.each do |owner|
  bunker = Bunker.new(name: Faker::GameOfThrones.house, location: Faker::GameOfThrones.city, price: Faker::Commerce.price, description: Faker::GameOfThrones.quote, picture: "url")
  bunker.user = owner
  bunker.save
  bunkers << bunker
end


puts "Creating Bookings"
(0..4).each do |i|
  borrower = borrowers[i]
  bunker = bunkers[i]
  booking = Booking.new
  booking.bunker = bunker
  booking.user = borrower
  booking.save
end

