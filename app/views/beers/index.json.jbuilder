json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :abv, :ibu, :type, :released, :best_after, :best_before, :brewery_id, :style_id, :parent_id
  json.url beer_url(beer, format: :json)
end
