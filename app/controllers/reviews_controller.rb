class ReviewsController < ApplicationController
  before_action :set_restaurant
  def new
    @review = @restaurant.reviews.build()
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    # params.require(:restaurant).permit(:restaurant_id)
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
