# Library Manager - Backend

## Database Installation

Database is setup to use an initial set of seed data. The seed data consists of the following:
* 50 Members
* 200 Randomized Checkout History Records
* 25 Curent Checkouts
* 100 Library Books With Accurate Author and ISBN Information

Installation Steps 
1. Run bundle install
2. Run bundle exec rake db:migrate db:seed

Notes
* To purge and reset the seed data, use the following commands:
   1. bundle exec rake db:purge
   2. bundle exec rake db:migrate db:seed

## Launching Backend Server

## Routes