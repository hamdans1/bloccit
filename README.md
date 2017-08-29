# Sammit
---
Sammit is a Ruby on Rails replica of the popular internet website Reddit. The application was built to gain an understanding of how a Rails app is constructed.
You can find the app on Heroku at: (https://pure-cliffs-33222.herokuapp.com)
You can find the source code on GitHub at: (https://github.com/hamdans1/bloccit)


## Features
---
* Users can create a standard account with an email and password.
* Posts and Comments can get up/down votes and are scoped according to their vote score and a time decay algorithm.
* Users can favorite posts and receive email updates every time a comment or change is made to a post.


## Configuration
---
**Language and Framework:** Ruby/RoR
**Ruby Version:** 2.3.0
**Databse:** SQLite(Development), PostgreSQL(Production)
**Gemfile AddOns:** 
* BCrypt
* SendGride
* Bootstrap
* Figaro
* FactoryGirl
* Shoulda
**Run Sammit locally:**
* Clone the repo
* Create and migrate your database
* Run `$ rails server`
* Navigate to localhost:3000