require './lib/bike.rb'

class DockingStation
	attr_reader :bikes
	def initialize
		@bikes = []
	end
  def release_bike
      fail 'No bikes available' if @bikes.empty?
      @bikes.pop
  end

  def dock(bike)
      fail 'Full' if @bikes.length >= 20
      @bikes << Bike.new
  end
end