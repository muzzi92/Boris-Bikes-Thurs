require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No Bikes' unless @bike
    Bike.new
  end

  def dock(bike)
    raise 'Capacity full' if @bike
    @bike = bike
  end
end
