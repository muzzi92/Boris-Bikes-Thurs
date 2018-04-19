require_relative 'bike'

class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY

  def initialize(capacity = 20)
    @bikes = []
    @DEFAULT_CAPACITY = capacity
  end

  def release_bike
    raise 'No Bikes' if empty?
    @bikes.shift
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
