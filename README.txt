

HOW TO USE

Development and test environments require postgresql databases 'businesses_development' and 'businesses_test' with username: rails and password: rails_user. There are only two methods available in the business controller, 'index' and 'show.' Methods for creating, updating, and destroying can easily be implemented if necessary.

1. Run bundle install
2. rake db:migrate
3. rake import:businesses
4. rails s

curl http://localhost:3000/api/v1/businesses will return a list of business names with 50 businesses on each page, ids are included for reference but can be easily removed by editing app/serializers/index_serializer.rb
curl http://localhost:3000/api/v1/business/:id will return an array with all attributes belonging to :id
curl http://localhost:3000/api/v1/businesses?page='page number' will return page with page number
example: curl http://localhost:3000/api/v1/businesses?page=12 will return page 12
