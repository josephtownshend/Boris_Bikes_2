require_relative 'bike'

class DockingStation
  attr_reader :bike
  DEFAULT_CAPACITY = 20

  def initialize
    @bicycles = []
  end

  def release_bike
    raise 'No bike' if empty?
    Bike.new
    @bicycles.pop
  end

  def dock(bike)
    raise 'Max Capacity' if full?
    @bicycles << bike
  end

  def bike
    @bike
  end

private

  def empty?
    @bicycles.count == 0
  end

  def full?
    @bicycles.count == DEFAULT_CAPACITY
  end
end
