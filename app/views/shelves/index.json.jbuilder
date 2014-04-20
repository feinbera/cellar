json.array!(@shelves) do |shelf|
  json.extract! shelf, :id, :name, :cellar_id, :flags
  json.url shelf_url(shelf, format: :json)
end
