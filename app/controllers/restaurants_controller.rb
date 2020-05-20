class RestaurantsController < ApplicationController
  def index
   @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new

  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

private

  def tasks_params
    params.require(:name).permit(:name, :rating, :address, :phone, :category)
  end
