class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render :show
  end

  def most_liked
    @most_liked_movies = Movie.joins(:favorites)
      .group("movies.id")
      .order("COUNT(favorites.movie_id) DESC")
      .limit(5)
    render json: @most_liked_movies
  end
end
