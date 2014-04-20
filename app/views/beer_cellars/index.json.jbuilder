json.array!(@beer_cellars) do |beer_cellar|
  json.extract! beer_cellar, :id, :name, :user_id, :flags
  json.url beer_cellar_url(beer_cellar, format: :json)
end
