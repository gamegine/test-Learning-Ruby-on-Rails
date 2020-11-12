# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# setup
old -> bundle install --without production
bundle config set without 'production'
bundle install
rails db:migrate
rails db:seed
rails s


## heroku
heroku config:set BUNDLE_WITHOUT=development

