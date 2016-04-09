ruby 2.2.1
rails 4.2.6

HOW TO USE

Development and test environments require postgresql databases "businesses_development" and "businesses_test" with username: "rails" and password: "rails_user". There are only two methods available in the business controller, 'index' and 'show.' Methods for creating, updating, and destroying can easily be implemented if necessary.

1. bundle install
2. rake db:migrate
3. rake import:businesses
4. rails s
* 'bundle exec rake db:migrate' and 'bundle exec rake import:businesses' may be required

"curl http://localhost:3000/api/v1/businesses" will return an array of business names sorted by id with 50 businesses on each page
"curl http://localhost:3000/api/v1/" will also return index

"curl http://localhost:3000/api/v1/businesses?page='page number'" will return page with page number
example: "curl http://localhost:3000/api/v1/businesses?page=12" will return page number 12

"curl http://localhost:3000/api/v1/business/:id" will return a hash with all attributes belonging to :id


Can also be accessed in the browser with "http://localhost:3000/api/v1/businesses.json" and "http://localhost:3000/api/v1/business.:id.json"
