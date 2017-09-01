require_relative 'bike.rb'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = 0
  end

  def release_bike
    raise "This is a fail" if @bikes < 1
    raise "This is a fail" if !working
    @bike
    end

      #raise "this is a fail" if @bikes == 0

  def dock(bike)
    @bike = bike
  end
end
