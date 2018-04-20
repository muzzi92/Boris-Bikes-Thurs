class Bike
  attr_accessor :working_condition

  def initialize
    @working_condition = true
  end

  def working?
    @working_condition
  end

  def broken
    @working_condition = false
  end
end
