# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

puts 'Creating restaurants...'
rest1 = { name: 'Dishoom', address: 'Avenue des Champs-Élysées 5, Paris', phone_number: '+3304818899', category: 'french'}
rest2 = { name: 'PizzaLove', address: 'Via Ostiense 5, Roma', phone_number: '+3904818889', category: 'italian'}
rest3 = { name: 'PastaMe', address: 'Via Arno 5, Florence', phone_number: '+3904816799', category: 'italian'}
rest4 = { name: 'SushiFan', address: 'Via Treviso 5, Venice', phone_number: '+3905418899', category: 'japanese'}
rest5 = { name: 'ChinaTown', address: 'Via Lungomare 5, Neaples', phone_number: '+3306518899', category: 'chinese'}

[rest1, rest2, rest3, rest4, rest5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
