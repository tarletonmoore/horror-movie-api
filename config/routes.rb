Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/me" => "users#show"

  get "/movies/most_liked" => "movies#most_liked"
  get "/movies/recommendations" => "movies#recommendations"
  get "/movies/recently_added" => "movies#recently_added"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"

  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"
  get "/favorites" => "favorites#index"

  post "/reviews" => "reviews#create"
  patch "/reviews/:id" => "reviews#update"
  delete "/reviews/:id" => "reviews#destroy"

  get "/ratings" => "ratings#index"
  post "/ratings" => "ratings#create"
end
