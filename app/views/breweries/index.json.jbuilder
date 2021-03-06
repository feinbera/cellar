json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :name, :city, :state, :postal, :country
  json.url brewery_url(brewery, format: :json)
end
