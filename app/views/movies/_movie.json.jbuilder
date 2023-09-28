# json.extract! movie, :id, :created_at, :updated_at
# json.url movie_url(movie, format: :json)
json.id movie.id
json.title movie.title
json.image_url movie.image_url
json.description movie.description
json.subgenre movie.subgenre
