json.extract! search, :id, :user_id, :query, :created_at, :updated_at
json.url search_url(search, format: :json)
