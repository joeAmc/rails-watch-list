# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Quote.famous_last_words,
    poster_url: 'https://source.unsplash.com/random',
    rating: rand(0..10).to_f
  )
end

puts 'Adding movie seeds'
