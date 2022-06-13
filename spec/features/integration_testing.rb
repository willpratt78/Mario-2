require 'rails_helper'

describe 'new user' do
  it 'adds a new user' do
    visit '/'
    click_on('Register')
    fill_in('email', :with => 'test1@test.com')
    fill_in('password', :with => 'password')
    fill_in('password_confirmation', :with => 'password')
    click_button('Sign up')
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end

describe 'sign in' do
  it 'signs a user in' do
    visit '/'
    click_on('Sign in')
    fill_in('email', :with => 'test1@test.com')
    fill_in('password', :with => 'password')
    click_button('Log in')
    expect(page).to have_content('Signed in successfully.')
  end
end

describe 'user privlages' do
  before(:each) do  
    product = Product.create!(name: "Olive Oil", cost: "15.99", country_of_origin: "Italy")
    it 'signs a user in' do
      visit '/'
      click_on('Sign in')
      fill_in('email', :with => 'test1@test.com')
      fill_in('password', :with => 'password')
      click_button('Log in')
      expect(page).to have_content('Signed in successfully.')
    end

    it "creates a review" do
      first(:link, "Olive Oil").click
      click_on('Add a review here!')
      fill_in('author', :with => 'testname')
      fill_in('content_body', :with => 'hello I think this is about 50 characters, this definitly is though.')
      fill_in('rating', :with => '3')
      click_button('Create Review')
      expect(page).to have_content('Review successfully added!')
    end

    it "can't find create new product" do
      visit '/products'
      expect(page).to have_no_content('Create new product')
    end

    it "can't find edit" do
      first(:link, "Olive Oil").click
      expect(page).to have_no_content('Edit')
    end

    it "can't find edit" do
      first(:link, "Olive Oil").click
      expect(page).to have_no_content('Delete')
    end
end