json.array!(@boxes) do |box|
  json.extract! box, :id, :name, :container_type, :container_id, :flags
  json.url box_url(box, format: :json)
end
