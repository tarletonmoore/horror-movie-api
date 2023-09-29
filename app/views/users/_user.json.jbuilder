# json.extract! user, :id, :created_at, :updated_at
# json.url user_url(user, format: :json)
json.name user.name
json.image_url user.image_url
json.movies user.movies
# json.favorites user.favorites
# json.favorites user.favorites.each do |fav|

#   json.fav fav.movie
# end
json.favorites user.favorites.map do |favorite|
  json.partial! "favorites/favorite", favorite: favorite
end
