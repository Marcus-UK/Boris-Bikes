require_relative 'bike.rb'

class DockingStation
  attr_reader :bike
  def release_bike
    Bike.new
  end
  def dock(bike)
    puts "#{bike} docked"
  end
end
