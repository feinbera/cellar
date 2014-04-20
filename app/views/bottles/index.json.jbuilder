json.array!(@bottles) do |bottle|
  json.extract! bottle, :id, :user_id, :beer_id, :container_type, :container_id, :acquired, :consumed
  json.url bottle_url(bottle, format: :json)
end
