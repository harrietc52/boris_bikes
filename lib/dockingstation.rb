require './lib/bike.rb'

class DockingStation
  attr_reader :capacity

	def initialize(capacity = 20)
		@bikes = []
    @capacity = capacity
	end

  def release_bike
      fail 'No bikes available' if empty?
      @bikes.pop
  end

  def dock(bike)
      fail 'Docking Station is full' if full?
      @bikes << Bike.new
  end

  private

  attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
