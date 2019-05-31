require_relative 'bike'

class DockingStation
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bicycles = []
    @capacity = capacity
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
    @bicycles.count == capacity
  end
end
