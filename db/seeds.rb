# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate Shoe sizes

puts "Generating shoe sizes...."
shoe_size = (0..8)
shoe_size.each do |s| 
  ShoeSize.create(size: s)
end

# Generate Apparel sizes
puts "Generating apparel sizes...."
apparel_size = (9..15)
apparel_size.each do |s|
  ApparelSize.create(size: s) 
end

