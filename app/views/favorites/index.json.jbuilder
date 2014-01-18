json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :user_id, :target_id, :target_type
  json.url favorite_url(favorite, format: :json)
end
