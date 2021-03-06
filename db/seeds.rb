# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

puts 'Cleaning database.....'
Restaurant.destroy_all

puts "Creating restaurants..."
bristol = { name: 'Epicure', address: '75008 Paris', phone_number: '0437491034', category: 'french' }
pure_south_dining = { name: 'Pure South Dining', address: 'Southbank', phone_number: '03312381', category: 'italian'}
entrecote = { name: 'Entrecôte', address: 'Prahran', phone_number: '0478085743', category: 'french' }
flower_drum = { name: 'Flower Drum', address: 'Market Lane, Melbourne',  phone_number: '91297321', category: 'chinese' }
kisume = { name: 'Kisumé', address: 'Flinders Lane, Melbourne', phone_number: '120397641', category: 'japanese' }

[bristol, pure_south_dining, entrecote, flower_drum, kisume].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
