require "docking_station"

describe DockingStation do
  it "bike release" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to eq "Bike released"
  end
end


  