class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    if @category.present?
      @category = params[:food_type]
      @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category }
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    render plain: "This restaurant would have been created #{params[:name]} #{params[:address]}"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

end

