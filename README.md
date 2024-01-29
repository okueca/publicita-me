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

============================ DB DESIGN ==============================================

Table posts {
  id integer [primary key]
  user_id integer
  title varchar
  timestamp varchar
  status varchar
  screens varchar
  created_at timestamp 
}

Table users {
  id integer [primary key]
  username varchar
  role varchar
  phone integer
  coutry varchar
  email varchar
  created_at timestamp
}

Table payments {
  id integer [primary key]
  method varchar
  user_id integer
  post_id integer
  amount integer
  status varchar
  created_at timestamp
}


Table screen_post {
  id integer [primary key]
  screen_id integer
  post_id integer
  created_at timestamp
}



Table screens {
  id integer [primary key]
  name varchar
  country varchar
  location text [note: 'Content of the post']
  post_id integer
  dimantion varchar
  price_per_min integer
  status varchar
  description varchar
  created_at timestamp
}

Table post_dates {
  id integer [primary key]
  post_id integer
  date date
  frequency integer
  created_at timestamp
}






Ref: "users"."id" < "posts"."user_id"

Ref: "users"."id" < "payments"."user_id"

Ref: "posts"."id" - "payments"."post_id"

Ref: "posts"."id" < "screen_post"."post_id"

Ref: "screens"."id" < "screen_post"."screen_id"  


Ref: "posts"."id" < "post_dates"."post_id"
=======================================================================================00
