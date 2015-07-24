module BikeContainer
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize capacity = DEFAULT_CAPACITY
    @capacity = capacity
    @bikes = []
  end

  def add_bike ( bike )
    fail "#{self.class.name} full" if full?
    bikes << bike
  end

  def full? 
  	bikes.count >= @capacity
  end

  def empty?
  	bikes.count <= 0
  end

  private

  attr_reader :bikes
end
