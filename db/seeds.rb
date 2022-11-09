require 'faker'

puts 'Cleaning out DB...'
Restaurant.destroy_all

puts 'Creating new Restaurants'
5.times do
  Restaurant.create!(
    name: Faker::Ancient.primordial,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CUISINE.sample
  )
end

puts "...created #{Restaurant.count} restaurants"

#   movies = Movie.create({ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
