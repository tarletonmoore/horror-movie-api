class FavoritesController < ApplicationController
  def create
    if current_user
      @favorite = Favorite.create(user_id: current_user.id, movie_id: params[:movie_id])
      render :show
    end
  end
end
