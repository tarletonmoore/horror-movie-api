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

  def recommendations
    if current_user
      user_favorites = current_user.favorites.pluck(:movie_id)

      similar_users = Favorite.where(movie_id: user_favorites)
                             .where.not(user_id: current_user.id)
                             .pluck(:user_id)
                             .uniq

     
      recommended_movies = Movie.joins(:favorites)
                                .where(favorites: { user_id: similar_users })
                                .where.not(id: user_favorites)
                                .group("movies.id")
                                .order("COUNT(favorites.movie_id) DESC")
                                .limit(5)

      render json: recommended_movies
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def recently_added
    @recently_added_movies = Movie.order(created_at: :desc).limit(10) 
    render json: @recently_added_movies
  end

end
