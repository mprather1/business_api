json.array!(@businesses) do |business|
  json.uuid business.uuid
  json.name business.name
  json.address  business.address
  json.address2 business.address2
  json.city business.city
  json.state  business.state
  json.zip business.zip
  json.country business.country
  json.phone business.phone
  json.website business.website
  json.created_at business.created_at
end
