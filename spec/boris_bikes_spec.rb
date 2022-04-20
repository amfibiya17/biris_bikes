require "docking_station"

describe DockingStation do
  it "bike release" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  it "Get a bike from the station and test it works - feature test" do
    station = DockingStation.new
    bike = station.release_bike 
    #station.release_bike is a new instance of the bike class, assigned to bike variable
    expect(bike).to respond_to(:working?)
  end

  it "Docking is possible" do
    station = DockingStation.new
    expect(station).to respond_to(:dock)
  end

  it "Feature test - dock a bike at the docking station" do
    station = DockingStation.new
    bike = Bike.new
    expect(station).to respond_to(:dock).with(1).argument
  end

end


  