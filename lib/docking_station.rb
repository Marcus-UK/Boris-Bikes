require_relative 'bike.rb'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise "This is a fail" unless @bike
    #raise "This is a fail" if !working?
    @bike
    end

      #raise "this is a fail" if @bikes == 0

  def dock(bike)
    fail 'Dock full' if @bikes.count >=20
    @bikes << bike
  end
end
