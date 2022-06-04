# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Food.spice,
                        cost: Faker::Number.between(from: 1, to: 5),
                        country_of_origin: Faker::Lorem.sentence(1, false, 0).chop
                      )  

  5.times do |index|
    review = Review.create!(author: Faker::Name.first_name,
                            content_body: Faker::Lorem.characters(number: 60),
                            rating: Faker::Number.between(from: 1, to: 5),
                            product_id: product.id)
  end
end

Product.destroy_all

p "Created #{Product.count} spices, and #{Review.count} reviews"