require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No Bikes' if @bikes.length == 0
    Bike.new
  end

  def dock(bike)
    raise 'Capacity full' if @bikes.length >= 20
    @bikes << bike
  end
end
