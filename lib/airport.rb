class Airport
  attr_reader :planes, :weather

  DEFAULT_CAPACITY = 100

  def initialize(weather = Weather.new)
    @planes = []
    @weather = weather
  end

  def land(plane)
    fail 'Unable to land - weather is stormy' if weather.stormy?
    fail 'Airport at full capacity' if full?
    planes << plane
  end

  def take_off(plane)
    fail 'Unable to take off - weather is stormy' if weather.stormy?
    planes.delete(plane)
  end

  private

  def full?
    planes.count >= DEFAULT_CAPACITY
  end

end
