require_relative 'bike.rb'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise "This is a fail" if empty?
    #raise "This is a fail" if !working?
    @bike
    end

      #raise "this is a fail" if @bikes == 0

  def dock(bike)
    fail 'Dock full' if full?
    @bikes << bike
  end

private

def full?
  @bikes.count >= 20
end

def empty?
  @bikes.empty?
end

end
