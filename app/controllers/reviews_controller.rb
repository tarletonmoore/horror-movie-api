class ReviewsController < ApplicationController
  def create
    if current_user
      @review = Review.create(
        user_id: current_user.id,
        movie_id: params[:movie_id],
        review: params[:review],
      )
      render :show
    end
  end
end
