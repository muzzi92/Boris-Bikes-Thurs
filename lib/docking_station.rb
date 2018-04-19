require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No Bikes' if empty?
    Bike.new
  end

  def dock(bike)
    raise 'Capacity full' if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.length == 0
  end
end
