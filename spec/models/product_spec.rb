require 'rails_helper'

 describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name}
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
  it { should validate_numericality_of(:cost).is_greater_than_or_equal_to(0) }


  it("titalizes the name of an product") do
    product = Product.create({name: "olive oil", cost: "15.99", country_of_origin: "Italy"})
    expect(product.name()).to(eq("Olive Oil"))
  end

  it 'returns all products with origin of USA' do
    product1 = Product.create({name: 'item', cost: 1, country_of_origin: 'USA'})
    product2 = Product.create({name: 'item', cost: 1, country_of_origin: 'italy'})
    expect(Product.usa).to (eq([product1]))
  end

  it 'returns three most recent products added' do
    product1 = Product.create({name: 'item1', cost: 1, country_of_origin: 'Usa'})
    product2 = Product.create({name: 'item2', cost: 1, country_of_origin: 'canada'})
    product3 = Product.create({name: 'item3', cost: 1, country_of_origin: 'Usa'})
    product4 = Product.create({name: 'item4', cost: 1, country_of_origin: 'canada'})
    expect(Product.three_most_recent).to (eq([product4, product3, product2]))
  end

    it 'find the product with the most reviews' do
    product = Product.create({name: 'item1', cost: 1, country_of_origin: 'italy'})
    product2 = Product.create({name: 'item2', cost: 1, country_of_origin: 'italy'})
    review = Review.create({product_id: product.id, author: 'will', rating: 5, content_body: 'hello, this is at least 50 characters I believe which should be enough to post this.'})
    expect(Product.most_reviews).to(eq([product]))
  end
end



