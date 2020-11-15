# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

# API call to generate sneakers for sneaker model
puts "Generating Sneakers...."
response = RestClient.get('https://api.thesneakerdatabase.com/v1/sneakers?limit=50&name=ADIDAS%20YEEZY&gender=Men')
json = JSON.parse response
result = json['results']
result.each do |r|
  Sneaker.create(title: r['title'], brand: r['brand'])
end

# Jordan sneaker (just in case API doesn't work)
Sneaker.create(brand:"Jordan", title:"Jordan 1 Retro High Dark Mocha")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Mid Chicago Toe")
Sneaker.create(brand:"Jordan", title:"Jordan 12 Retro Black Dark Concord")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Retro High Tokyo Bio Hack")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Retro High Light Smoke Grey")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Mid Light Smoke Grey")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Retro High Royal Toe")
Sneaker.create(brand:"Jordan", title:"Jordan 5 Retro Alternate Bel-Air")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Retro High Court Purple White")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Retro High Pine Green Black")
Sneaker.create(brand:"Jordan", title:"Jordan 12 Retro Black University Gold")
Sneaker.create(brand:"Jordan", title:"Jordan 12 Retro Indigo")
Sneaker.create(brand:"Jordan", title:"Jordan 11 Retro Low Concord Bred")
Sneaker.create(brand:"Jordan", title:"Jordan 1 Retro High CO Japan Neutral Grey (2020)")
Sneaker.create(brand:"Jordan", title:"Jordan 5 Retro Top 3")

# Generate example apparel for apparel model
puts "Generating Apparels...."
# Supreme apparel
Apparel.create(brand:"Supreme", title:"Supreme Box Logo L/S Tee White")
Apparel.create(brand:"Supreme", title:"Supreme Box Logo L/S Tee Black")
Apparel.create(brand:"Supreme", title:"Supreme Box Logo L/S Tee Navy")
Apparel.create(brand:"Supreme", title:"Supreme Box Logo L/S Tee Pine")
Apparel.create(brand:"Supreme", title:"Supreme Box Logo L/S Tee Purple")
Apparel.create(brand:"Supreme", title:"Supreme Box Logo L/S Tee Orange")
Apparel.create(brand:"Supreme", title:"Supreme Smurfs Sweater White")
Apparel.create(brand:"Supreme", title:"Supreme The North Face S Logo Fleece Jacket Black")
Apparel.create(brand:"Supreme", title:"Supreme The North Face S Logo Fleece Jacket Lime")
Apparel.create(brand:"Supreme", title:"Supreme x Louis Vuitton Box Logo Hooded Sweatshirt Red")
Apparel.create(brand:"Supreme", title:"Supreme The North Face Mountain Parka Blue/White")

# Fear Of God apparel
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS 3D Silicon Applique Pullover Hoodie Dark Slate/Stretch Limo/Black")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS 3D Silicon Applique Pullover Hoodie Heather Oatmeal")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS 3D Silicon Applique Pullover Hoodie Buttercream")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS 3D Silicon Applique Boxy T-Shirt Buttercream")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS 3D Silicon Applique Boxy T-Shirt Dark Slate/Stretch Limo/Black")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS 3D Silicon Applique Boxy T-Shirt White")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS Sweatpants (SS20) Dark Slate/Stretch Limo/Black")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS Sweatpants Heather Oatmeal")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS Sweatpants Heather Grey")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS Track Pants Black Reflective")
Apparel.create(brand:"Fear Of God", title:"FEAR OF GOD ESSENTIALS Volley Shorts Black Reflective")


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

