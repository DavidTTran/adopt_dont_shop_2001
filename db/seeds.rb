# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shelter.create(name: "Dumb Friends League", address: "123 Fake St", city: "Castle Rock", state: "CO", zip: "80104")
Shelter.create(name: "Pawty Please", address: "000 Another Fake St", city: "Denver", state: "CO", zip: "80204")

Pet.create(name: "Buddy", approximate_age: 6, sex: "male", image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/single-minded-royalty-free-image-997141470-1558379890.jpg?crop=0.671xw:1.00xh;0.0847xw,0&resize=640:*")

Pet.create(name: "King", approximate_age: 5, sex: "male", image: "https://www.espree.com/sites/default/files/2019-10/DobermanPinscher.png")
