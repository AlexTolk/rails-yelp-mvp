# Top-level docs
class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
