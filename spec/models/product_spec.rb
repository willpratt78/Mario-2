require "rails_helper"

 describe Product do
  it { should have_many(:reviews) }

  it {should validate_presence_of :name}

  it("titalizes the name of an product") do
    product = Product.create({name: "olive oil", cost: "15.99", country_of_origin: "Italy"})
    expect(product.name()).to(eq("Olive Oil"))
  end
end

