# Library Manager - Backend

## Project Overview

## Database Overview
Database is setup to use an initial set of seed data. The seed data consists of the following:
* 50 Members
* 200 Randomized Checkout History Records
* 25 Curent Checkouts
* 100 Library Books With Accurate Author and ISBN Information

## Database Installation
Enter the following commands to setup the database with the seed data:
1. Run bundle install
2. Run bundle exec rake db:migrate db:seed

## Launching Backend Server
Enter the following command to launch the backend server on port 9292:
* bundle exec rake server

## Routes
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
**DELTE** /members/:id \
### Authors - CRUD: Read
**GET** /authors
### Genres - CRUD: Read
**GET** /genres
## Notes
Enter the following commands to reset the database and seed data:
1. bundle exec rake db:purge
2. bundle exec rake db:migrate db:seed