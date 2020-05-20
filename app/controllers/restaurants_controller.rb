class RestaurantsController < ApplicationController
  def index
   @restaurants = Restaurant.all
  end
end

private

  def tasks_params
    params.require(:name).permit(:name, :rating, :address, :phone, :category)
  end
