require_relative 'bike'

class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY

  def initialize
    @bikes = []
    @DEFAULT_CAPACITY = 20
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
    @bikes.length >= @DEFAULT_CAPACITY
  end

  def empty?
    @bikes.length == 0
  end
end
