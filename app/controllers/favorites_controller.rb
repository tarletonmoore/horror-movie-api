class FavoritesController < ApplicationController
  def create
    if current_user
      @favorite = Favorite.create(user_id: current_user.id, movie_id: params[:movie_id])
      render :show
    end
  end

  def destroy
    if current_user
      @favorite = Favorite.find_by(id: params[:id])
      @favorite.destroy
      render json: { message: "favorite deleted" }
    end
  end
end
