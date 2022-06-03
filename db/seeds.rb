# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.spice,
                        cost: Faker::Number.between(from: 0, to: 6),
                        country_of_origin: Faker::Lorem.sentence(1, false, 0).chop)  
end

# 5.times do |index|
#   Review.create!(author: Faker::Name.new,
#                           content_body: Faker::Lorem.sentence(55, false, 0).chop,
#                           rating: Faker::Number.between(from: 0, to: 6),
#                           product: product)
# end

p "Created #{Product.count} spices"