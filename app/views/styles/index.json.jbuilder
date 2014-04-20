json.array!(@styles) do |style|
  json.extract! style, :id, :name, :description, :parent_id
  json.url style_url(style, format: :json)
end
