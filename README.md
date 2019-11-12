# Jungle

> A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

As a student, I have used this application to solve bugs and implement tickets VIA ticket-style. Below is a list of those tickets I have completed.

* UI changes
  - Empty Cart
    *When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty, followed by a link to the home page.
  - Soldout Badge
    *When a product has 0 quantity, display a sold out badge on the product list page.
  - Order Details
    * Add: 
      - The line items in the order and:
      - Their image, name and description
      - Their respective quantities and line item totals
      - The final amount for the order
      - The email that was used

* Bugs
  - Missing Admin Authentication
    * Implement HTTP basic auth as a way of securing the admin/products resource.

* Features
  - Admin Dashboard Counts:
    * Display a count of how many products are in the database
    * Display a count of how many categories are in the database
  - About page:
    * The page should be accessible via /about and it should be linked in the top nav as "About Us".
  - Admin -> Categories
    * The ability for administrators to see a list of all categories and create new categories. This should work very similarly to how products can be managed by admins.
    * Only implement the index (list), new and create actions for this resource. While admins can destroy products, they don't need this functionality for categories.
  - User Authentication
    * User Stories
      - As a Visitor I can go to the registration page from any page in order to create an account
      - As a Visitor I can sign up for a user account with my e-mail, password and name
      - As a Visitor I can sign in using my e-mail and password
      - As a User I can log out from any page

* Tests using Capybara and a headless Webkit browser powered by PhantomJS
  - Product spec
    * Validate presence of name
    * Validate presence of quantity
    * Validate presence of price
    * Validate presence of category
  - User spec
    * Validate presence of password and password_confirmation
    * Emails must be unique (not case sensitive)
    * The password must have a minimum length when a user account is being created.
    * Email: Leading & trailing Spaces should be stripped for the 
  - Home Page
    * Should contain one article.product element on the page.
  - Product Details
    * Test that users can navigate from the home page to the product detail page by clicking on a product.
  - Add to Cart
    * Test that users can click the 'Add to Cart' button for a product on the home page and in doing so their cart increases by one
  - User Login
    * Test that users can login successfully and are taken to the home page once they are signed in.

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
