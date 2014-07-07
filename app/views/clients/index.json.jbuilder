json.array!(@clients) do |client|
  json.extract! client, :name, :country
  json.url client_url(client, format: :json)
end