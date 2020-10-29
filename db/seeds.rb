# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "destroy all"
Restaurant.destroy_all
Review.destroy_all
Game.destroy_all

puts "create restaurant"
  10.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address:Faker::Address.full_address)
end

puts "create game"
10.times do
  elm = Game.create(
      title:Faker::Game.title,
      genre:Faker::Game.genre,
      platform:Faker::Game.platform,
      stars:Faker::Number.digit)
  5.times do
    Review.create(content:Faker::Lorem.paragraph,game:elm)
  end
end