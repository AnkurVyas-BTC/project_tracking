json.array!(@users) do |user|
  json.extract! user, :name, :code, :description, :billing_type, :start_date, :deadline_date, :end_date, :github_url, :status
  json.url user_url(user, format: :json)
end