# Jungle

A mini e-commerce application built with Rails 6.1

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Testing

- RSpec
- Cypress


# 
# PROJECT TITLE - Jungle

## PROJECT DESCRIPTION

An ecommerce web app to buy plants by category, and user can check out using Stripe. As an admin, you will be able to see the dashboard of current status of all products and you can add or remove the products.

# TECH STACK #

## Languages, Frameworks & Database ##

![Ruby On Rails](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)

## API ##
![Stripe](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)

## Testing ##
![Rspec](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![Cypress](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)

## Others
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![ESLint](https://img.shields.io/badge/ESLint-4B3263?style=for-the-badge&logo=eslint&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

# PROJECT OVERVIEW #

## Landing Page 
### Landing page to navigate through the website ###
![Home](doc/Home.jpg)

## Products 
### Home page where you can view all available plants ###
![Products](doc/products.jpg)

## Prodect Details
### Prduct details page to read more about the plants or add product to cart ###
![Product Details](doc/productDetail.jpg)

## Shopping Carts
### Shopping cart page to view added items or modify them or place order ###
![Shopping Cart](doc/shopping%20cart.jpg)

## Product Checkout
### Checkout selected items using Stripe for payment ###
![Checkout Stripe](doc/stripe%20integration.jpg)

## Order Confirmation
### View order confirmation upon successful payment via Stripe ###
![Order Confirmation](doc/orderConfirmation.jpg)

## User Registration
### Simple new user registration page ###
![User Registration](doc/userRegistration.jpg)

## Admin Dashboard
### Admin can login using admin password to view dashboard of current status of products and categories ###
![Admin Dashboard](doc/admin%20dashboard.jpg)

## Admin Category
### Admin can view current category and add new category of plant ###
![Admin Category](doc/admin%20category.jpg)
![Admin Category](doc/adminAddCategory.jpg)

## Admin Product
### Admin can view current prducts and delete or add products  ###
![Admin Product](doc/adminAddProdcut.jpg)
![Admin Product](doc/adminAddNewProduct.jpg)

