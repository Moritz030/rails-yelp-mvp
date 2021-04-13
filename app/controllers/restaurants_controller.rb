class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private
  def find_restaurant
  end
end
