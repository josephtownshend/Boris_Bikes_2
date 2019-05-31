require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bike' if @bike == nil
    Bike.new
  end

  def dock(bike)
    raise 'Full' if @bike 
    @bike = bike
  end

  def bike
    @bike
  end
end
