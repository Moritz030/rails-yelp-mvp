class RestaurantsController < ApplicationController
  
  before_action :find_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(get_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  private
  def get_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end
