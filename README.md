# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. A simulation of the real world where feature and bug-fix requests are listed to implement a solution.

## Features

### Sold Out Badge
- When a product has 0 quantity, a sold out badge should be displayed on the product list page

### Admin Categories
- Admins can list and create new categories
- Admins can add new products using the new category

### User Authentication
- As a Visitor, go to the registration page from any page in order to create an account
- As a Visitor, sign up for a user account with my e-mail, password, first name and last name
- As a Visitor, sign in using my e-mail and password
- As a User, log out from any page
- As a User, sign up with an existing e-mail address (uniqueness validation)
- Passwords are stored using  has_secure_password in the User model, leveraging the bcrypt gem

### Enhance Order Details page
- The order page contains items, their image, name, description, quantities and line item totals
- Display the final amount for the order
- Display the email used to place the order

### Bug: Missing Admin Security
- User must enter HTTP auth login/password to access admin functionality

### Bug: Checking out with Empty Cart
- When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty and link to the home page


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Additional Steps for Apple M1 Machines
1. Make sure that you are runnning Ruby 2.6.6 (ruby -v)
2. Install ImageMagick brew install imagemagick imagemagick@6 --build-from-source
3. Remove Gemfile.lock
4. Replace Gemfile with version provided here