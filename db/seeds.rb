# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
garden = { name: "Li's Garden", address: "Pulborough, West Sussex", category: "chinese" }
zola =  { name: "Zola", address: "Paul Linke Ufer, Berlin", category: "italian" }
hallmann = { name: "Hallmann und Klee", address: "Neukoelln, Berlin", category: "french" }
rouge = { name: "Cafe Rouge", address: "Market, Wokingham", category: "french" }
life =  { name: "Life", address: "Paul Linke Ufer, Berlin", category: "japanese" }

[garden, zola, hallmann, rouge, life].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
