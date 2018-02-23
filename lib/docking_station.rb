require_relative 'bike'
class DockingStation

  attr_reader :bike, :array_of_bikes, :hired_bike

  def initialize
    @array_of_bikes = []
  end

  def release_bike
    fail "sorry, no bikes available" unless @array_of_bikes.length > 0
    @hired_bike = @array_of_bikes.delete_at(0)
  end

  def dock(bike)
    @bike = bike
    @array_of_bikes << @bike
  end

end
