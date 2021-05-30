class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show
  
  def index
    @restaurants = Restaurant.all
    filter_by_query if params[:query]
    filter_by_city if params[:city]
    filter_by_category if params[:category]
  end

  def show
  end

  # todos os métodos abaixo são privados
  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def filter_by_query
    @restaurants = @restaurants.ransack(name_or_description_cont: params[:query]).result
  end

  def filter_by_city
    @restaurants = @restaurants.where(city: params[:city])
  end

  def filter_by_category
    @restaurants = @restaurants.select do |restaurant|
      restaurant.category.title == params[:category]
    end
  end
end
