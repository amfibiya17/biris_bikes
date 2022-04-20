class DockingStation
  attr_reader :stored_bike
  
  def release_bike
    Bike.new
  end

  def dock(bike)
    @stored_bike = bike
  end
  
end

class Bike
  def working?
    true
  end
end