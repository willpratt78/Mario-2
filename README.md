#  Mario's food

#### Application will let you create products, user accounts, and reviews

#### By Will Pratt

## Technologies Used

* ruby
* rspec
* pry
* Sass
* Rails
* BootStrap


## Description

Application will have you create a user account, if you're an admin you have full CRUD functionality for products, if not you can comment reviews on products.

## Setup/Installation Requirements

* Navigate to Repository 
* Copy Repo address
* Clone Repo to computer
* Navigete to directory in terminal
* Open repo in VSC using terminal 
* Run bundle in terminal
* navigate to config/database.yml and remove or replace password as you need
* Run rake db:create
* Run rails s
* Navigate to webpage and log-in to make an account
* To make account an admin go to VSC terminal and run rails c, type @user = User.first (replace first with correct  naming convention based off user id number, ie id 2 is User.second), then type @user.admin = true
* Run rake db:seed to seed database with 50 products(spices), and 250 reviews
* Create a product with the country as 'USA'(case sensative) and navigate to home page to have it list products made in USA

## Known Bugs

* If all products have the same number of reviews one will be chosen randomly as "most reviews", if another review is added it corrects
* USA is currently case sensative to USA


## License

[MIT](https://opensource.org/licenses/MIT)

Copyright (c) 6/6/22 _William Pratt_