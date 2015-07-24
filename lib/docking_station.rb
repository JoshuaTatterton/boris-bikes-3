require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

attr_reader :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def capacity=(value = DEFAULT_CAPACITY)
    @capacity = value
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.each {|x| !x.broken? ? (return @bikes.delete(x)) : false}
    fail 'Can not release broken bike'
  end

  def dock bike
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
