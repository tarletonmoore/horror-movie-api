class RatingsController < ApplicationController
  def create
    if current_user
      @rating = Rating.create(
        user_id: current_user.id, movie_id: params[:movie_id], rating: params[:rating],
      )
      render :show
    else
      render json: { errors: @rating.errors.full_messages }
    end
  end
end
