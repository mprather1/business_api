json.array!(@businesses) do |business|
  json.extract! business, :name
  #json.name business.name

end
