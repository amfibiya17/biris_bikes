require "docking_station"

describe Bike do
  it "this bike works" do
    bike = Bike.new
    expect(bike).to be_working
  end
end