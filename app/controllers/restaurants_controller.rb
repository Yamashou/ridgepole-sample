class RestaurantsController < ApplicationController
  def index
    weekDay = ["sun","mon","tue","wed","thu","fri","sat"]
    d = Time.zone.now
    name = weekDay[d.wday] + " = true + open_time <= ? and ? <= end_time"
    nowTime = Time.new(2000,1,1,d.strftime("%I"),d.strftime("%M"))
    s = Operation.where(name).map(&:restaurant)
    @resutaurants = Operation.where(name,nowTimem,nowTimem).map(&:restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
