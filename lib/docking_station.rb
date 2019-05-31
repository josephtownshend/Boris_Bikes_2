require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bicycles = []
    @capacity = 20
  end

  def release_bike
    raise 'No bike' if @bicycles.count == 0
    Bike.new
    @bicycles.pop
  end

  def dock(bike)
    raise 'Max Capacity' if @bicycles.count == @capacity
    @bicycles << bike
  end

  def bike
    @bike
  end
end
