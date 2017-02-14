class RestaurantsController < ApplicationController
  def index
    weekDay = ["sun","mon","tue","wed","thu","fri","sat"]
    d = Time.zone.now
    restaurants = Restaurant.all
    # restaurants.push(Restaurant.first)
    @op_restaurants = []
    restaurants.each do |t|
      s=t.operation
      if s[weekDay[d.wday]]
        @op_restaurants.push(t)
      end
    end

  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
