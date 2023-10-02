# json.extract! review, :id, :created_at, :updated_at
# json.url review_url(review, format: :json)
json.movie review.movie
json.user review.user
json.review review.review