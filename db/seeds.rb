# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "start seeding"

Product.all.each(&:destroy!)
Quote.all.each(&:destroy!)
Pharmacy.all.each(&:destroy!)

5.times do
  product = Product.new
  product.name = "product"
  url = "https://source.unsplash.com/1200x800/"
  product.remote_image_url = url
  product.save!
end

2.times do
  quote = Quote.new
  quote.name = "Marie Dupont"
  quote.title = "cliente Clic et Prix"
  quote.content = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
  url = "https://source.unsplash.com/400x400/"
  quote.remote_image_url = url
  quote.save!
end

5.times do
  pharmacy = Pharmacy.new
  pharmacy.name = "Pharmacie de Marseille"
  pharmacy.url = "http://pharmacie-passard.clicetprix.com"
  url = "https://source.unsplash.com/400x300/"
  pharmacy.remote_image_url = url
  pharmacy.opening_times = "Ouvert du lundi au samedi de 09h à 19h."
  street = ["05 rue Sylvabelle", "84 rue dragon", "34 rue falque"].sample
  address = Address.new(street: street, zip_code: "13006", city: "Marseille")
  pharmacy.address = address
  pharmacy.save!
  address.save!
end

p "seeding completed"
