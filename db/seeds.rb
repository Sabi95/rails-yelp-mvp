require 'faker'

puts 'Cleaning out Restaurant DB...'
Restaurant.destroy_all

puts 'Creating new Restaurants'

  5.times do
    Restaurant.create!(
      name: Faker::Games::Zelda.location,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: Restaurant::CUISINE.sample
    )
  end

puts "...created #{Restaurant.count} restaurants"

puts 'Cleaning out Reviews DB...'
Review.destroy_all

puts 'Creating new Reviews'

Restaurant.all.each do |restaurant|
  2.times do
    Review.create!(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant: restaurant
    )
  end
end

puts "...created #{Review.count} reviews"

#   movies = Movie.create({ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
