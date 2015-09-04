require './lib/bike.rb'

class DockingStation
  attr_reader :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    if @bikes.any?(&:working?)
      position = @bikes.index(&:working?)
      @bikes.slice!(position)
    else
      fail 'No bikes available'
    end
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
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
