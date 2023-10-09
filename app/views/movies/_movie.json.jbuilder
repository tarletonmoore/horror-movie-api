json.id movie.id
json.title movie.title
json.image_url movie.image_url
json.description movie.description
json.subgenre movie.subgenre
json.reviews movie.reviews.map do |review|
  json.partial! "reviews/review", review: review
end
