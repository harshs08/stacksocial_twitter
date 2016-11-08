# README

Stack Social Twitter Challenge
==============================

[Hosted At](https://salty-brook-24574.herokuapp.com)

[Challenge Description](https://github.com/stacksocial/code-challenge/blob/master/ruby/rails-twitter-api/README.md)

Application dependencies:
-------------------------

- Ruby 2.3.1
- Rails 5.0.0.1
- PostgreSQL 9.5.5

Application design/features:
---------------------------
- User authentication and authorization using Devise
- Use of Twitter Gem for interacting with user
- Simple two web endpoints
  1. Login/Signup 
  2. Show tweets
- Parsing @mentions in tweets and linking to the status pages for those
- A helper method is used to extract links, hashtags and linking them
- Bootstrap used for styling
- Caching done for similar twitter API request for 5 mins using Rails cache
- Rspec along with VCR, Webmock, Guard is used to write tests
- Deployed in Heroku


Development Setup:
------------------
- `git clone git@github.com:harshs08/stacksocial_twitter.git`
- `cd stacksocial_twitter`
- `cp .example.env .env`
- set up the credentials in .env file
- `bundle install`
- `rails db:setup`
- `rails db:migrate`
- `bundle exec rails s`

Run Specs:
----------
- For first time run `rails db:migrate RAILS_ENV=test`
- `bundle exec rspec`

Deploy to heroku:
-----------------
- Set .env variables in the server
- Add `heroku remote`
- `git push heroku master`
- `heroku run rake db:migrate`
- More details [here](https://devcenter.heroku.com/articles/getting-started-with-rails5)

Future Additions:
-----------------
- Add more feature for interacting with twitter, like search
- Improve styling
- Add memecache or couchbase for caching
- Dockerise the app
