require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def release_bike
    raise 'No Bikes' unless @bikes
    Bike.new
  end

  def dock(bike)
    raise 'Capacity full' if @bikes
    @bikes = bike
  end
end
