class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  # this action is going to render restaurants/destroy.js.erb
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end
end
