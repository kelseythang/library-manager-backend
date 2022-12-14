# Library Manager - Backend

## Project Overview
Project is built using the following:
* Ruby
* Active Record
* SQLite3

## Database Overview
Database is setup to use the following seed data:
* 50 Members
* 200 Randomized Checkout History Records
* 25 Curent Checkouts
* 100 Library Books With Accurate Author and ISBN Information

## Database Relations
![ERD](https://imgur.com/a/7uHhjuS)

## Database Installation
Enter the following commands to setup the database with the seed data:
1. Run bundle install
2. Run bundle exec rake db:migrate db:seed

## Launching Backend Server
Enter the following command to launch the backend server on port 9292:
* bundle exec rake server

## Routes
Fetch requests are routed to: http://localhost:9292
### Checkouts - CRUD: Read, Delete
**GET** /checkouts \
**DELETE** /checkouts/:id
### Books - CRUD: Create, Read, Update
**GET** /books and books/:id \
**POST** /books \
**PATCH** /books/:id
### Members - CRUD: Create, Read, Update, Delete
**GET** /members and members/:id \
**POST** /members \
**PATCH** /members/:id -limited to fines \
**DELETE** /members/:id 
### Authors - CRUD: Read
**GET** /authors
### Genres - CRUD: Read
**GET** /genres

## Notes
Enter the following commands to reset the database and seed data:
1. bundle exec rake db:purge
2. bundle exec rake db:migrate db:seed