# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing DB"
Restaurant.destroy_all

puts "Creating restaurants"
15.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "Restaurant with id: #{restaurant.id} created"
end

puts "Finished seed restaurants in DB"



puts "Creating review of restaurants"
# 3.times do



  puts "finished seeding reviews of restaurants"
