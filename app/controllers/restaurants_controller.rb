class RestaurantsController < ApplicationController
  def index
    weekDay = ["sun","mon","tue","wed","thu","fri","sat"]
    d = Time.zone.now
    name = weekDay[d.wday] + " = true"
    @resutaurants = Operation.where(name).map(&:restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
