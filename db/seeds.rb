# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
papa_pasta = {name: "Papa Pasta", address: "Nantes", category: "italian"}
boulangerie =  {name: "Boulangerie", address: "Nantes", category: "french"}
izakaya_joyi =  {name: "Izakaya Joyi", address: "Nantes", category: "japanese"}
subway =  {name: "Subway", address: "Nantes", category: "french"}
pizza_hut =  {name: "Pizza Hut", address: "Nantes", category: "italian"}




[papa_pasta, boulangerie, izakaya_joyi, subway, pizza_hut].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

