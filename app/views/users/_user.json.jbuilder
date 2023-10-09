json.name user.name
json.image_url user.image_url
json.movies user.movies

json.favorites user.favorites.map do |favorite|
  json.partial! "favorites/favorite", favorite: favorite
end
