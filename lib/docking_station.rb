require_relative 'bike'
class DockingStation

  attr_reader :bike, :array_of_bikes, :hired_bike, :max_cap

  def initialize
    @max_cap = 20
    @array_of_bikes = []
  end

  def release_bike
    fail "sorry, no bikes available" unless @array_of_bikes.length > 0
    @hired_bike = @array_of_bikes.delete_at(0)
  end

  def dock(bike)
    raise 'Sorry, Docking station full' if @array_of_bikes.length == @max_cap
    @bike = bike
    @array_of_bikes << @bike
  end

end
