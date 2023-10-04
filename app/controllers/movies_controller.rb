class MoviesController < ApplicationController
  def index
    if current_user
      @movies = Movie.all
      render :index
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def show
    if current_user
      @movie = Movie.find_by(id: params[:id])
      render :show
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def most_liked
    if current_user
      @most_liked_movies = Movie.joins(:favorites)
        .group("movies.id")
        .order("COUNT(favorites.movie_id) DESC")
        .limit(5)
      render json: @most_liked_movies
    end
  end
end
