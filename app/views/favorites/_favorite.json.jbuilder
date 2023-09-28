# json.extract! favorite, :id, :created_at, :updated_at
# json.url favorite_url(favorite, format: :json)
json.user favorite.user
json.movie favorite.movie
