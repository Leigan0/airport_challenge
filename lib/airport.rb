class Airport
  attr_reader :planes, :weather

  def initialize(weather = Weather.new)
    @planes = []
    @weather = weather
  end

  def land(plane)
    fail 'Unable to land - weather is stormy' if @weather.stormy?
    @planes << plane
  end

  def take_off(plane)
    fail 'Unable to take off - weather is stormy' if @weather.stormy?
    @planes.delete(plane)
  end
end
