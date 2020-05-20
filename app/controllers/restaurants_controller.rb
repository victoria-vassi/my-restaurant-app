class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:destroy, :show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def show
    @reviews = @restaurant.reviews
    score = 0
      @reviews.each{|review| score += review.rating }
      if @reviews.count == 0
        @overall_rating = 0
      else
        @overall_rating = sprintf('%.2f', (score / @reviews.count)) #round two decimals points
      end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :map, :category)
  end
end
