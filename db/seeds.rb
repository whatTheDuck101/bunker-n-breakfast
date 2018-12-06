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
tzvi = User.create(
    first_name: 'Tzvi',
    last_name: 'Hamerman',
    email: 'Tzvi@lewagon.com',
    password: '123456',
    photo: File.open(Rails.root.join("app", "assets", "images", "tzvi.png"))
  )
vini = User.create(
  first_name: 'Vinicius',
  last_name: 'Ishizaki',
  email: 'Vinicius@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "vinicius.jpeg"))
)
eliz = User.create(
  first_name: 'Elizabeth',
  last_name: 'Creary',
  email: 'Elizabeth@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "elizabeth.jpg"))
)
songyi = User.create(
  first_name: 'Songyi',
  last_name: 'Han',
  email: 'Songyi@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "songyi.jpeg"))
)
puts "Done creating users"

puts "Creating bunkers..."

Bunker.create(
  user: tzvi, 
  name: "Big Rocky Bunker",
  address: "Castle Valley, Utah, USA",
  price: 8400500.0,
  description: "Secluded, lots of rocks & protection",
  latitude: 38.6394278,
  longitude: -109.4090056,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker1.jpg"))
)

Bunker.create(
  user: tzvi, 
  name: "Rocky Bunker",
  address: "Grand County, Utah, USA",
  price: 1403400.0,
  description: "Secluded, lots of rocks, cosy",
  latitude: 38.577408,
  longitude: -109.520114,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker2.jpg"))
)
Bunker.create(
  user: tzvi, 
  name: "Communal Bunker",
  address: "Coconino County, Arizona, USA",
  price: 3005900.0,
  description: "Close down to the ground, communal grounds outside.",
  latitude: 35.164766,
  longitude: -111.125945,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker3.jpg"))
)
Bunker.create(
  user: tzvi, 
  name: "Communication Bunker",
  address: "Tonto Basin, Arizona, USA",
  price: 3400000.0,
  description: "Will have great reception, sturdier than it looks.",
  latitude: 33.827156,
  longitude: -111.297428,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker4.jpg"))
)
Bunker.create(
  user: vini, 
  name: "Hidden Bunker",
  address: "Trout River, Newfoundland, Canada",
  price: 2500030.0,
  description: "Underground, deeply hidden.",
  latitude: 49.471953,
  longitude: -58.114939,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker5.jpg"))
)
Bunker.create(
  user: vini, 
  name: "Scenic Bunker",
  address: "Ferryland, Newfoundland, Canada",
  price: 9089200.0,
  description: "Enjoy nature's beauty, near drinkable water",
  latitude: 47.028775,
  longitude: -52.885045,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker6.jpg"))
)
Bunker.create(
  user: vini, 
  name: "Edgy Bunker",
  address: "Cercado, Bolivia",
  price: 5089200.0,
  description: "Got style, great view",
  latitude: -18.073658,
  longitude: -66.984883,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker7.jpg"))
)
Bunker.create(
  user: vini, 
  name: "Postmodern Bunker",
  address: "Bridgnorth, United Kingdom",
  price: 3989201.0,
  description: "Interesting neighbours, but will keep to themselves. Lots of space.",
  latitude: 52.561107,
  longitude: -2.368196,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker8.jpg"))
)

Bunker.create(
  user: eliz, 
  name: "Warm Bunker",
  address: "Norilsk, Krasnoyarsk Krai, Russia",
  price: 102938474.0,
  description: "Cold isolated climate but the bunker is warm. Hidden, worth the cost.",
  latitude: 69.354956,
  longitude: 88.246805,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker9.jpg"))
)
Bunker.create(
  user: eliz, 
  name: "Quaint Bunker",
  address: "Ashburton Lakes, New Zealand",
  price: 7746362.0,
  description: "Wonderous bunker, high up, safe!",
  latitude: -43.418203,
  longitude: 171.184547,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker10.jpg"))
)
Bunker.create(
  user: eliz, 
  name: "Isolated Bunker",
  address: "Vagár, Faroe Islands",
  price: 8746362.0, 
  description: "Fresh air, lovely view",
  latitude: 62.066018,
  longitude: -7.180961,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker11.jpg"))
)
Bunker.create(
  user: eliz, 
  name: "Spiral Bunker",
  address: "Sunshine Coast B, British Columbia, Canada ",
  price: 9933362.0, 
  description: "Aesthetic exterior, with an even betetr interior.",
  latitude: 49.907124,
  longitude: -123.481600,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker12.jpg"))
)
Bunker.create(
  user: songyi, 
  name: "Dom Bunker",
  address: "Wenzhou, Zhejiang, China",
  price: 5938362.0, 
  description: "Clean & comfortable.",
  latitude: 28.450104,
  longitude: 120.585151,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker13.jpg"))
)
Bunker.create(
  user: songyi, 
  name: "Sealed Bunker",
  address: "Pangasinan, Philippines",
  price: 8438362.0, 
  description: "Protected by water",
  latitude: 15.836293,
  longitude: 120.172859,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker14.jpg"))
)
Bunker.create(
  user: songyi, 
  name: "Homey Bunker",
  address: "Lhuntse, Bhutan",
  price: 6328362.0, 
  description: "Protected by water",
  latitude: 27.862273,
  longitude: 91.039048,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker15.jpg"))
)
Bunker.create(
  user: songyi, 
  name: "Closed Off Bunker",
  address: "Daegu, South Korea",
  price: 4328362.0, 
  description: "Off the beaten path, very safe.",
  latitude: 35.78166,
  longitude: 128.671386,
  photo: File.open(Rails.root.join("app", "assets", "images", "bunker16.jpg"))
)
puts "Done creating bunkers"