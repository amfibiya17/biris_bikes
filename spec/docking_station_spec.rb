require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it "Get bike and check it works" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    bike = station.release_bike
    expect(bike.working?).to eq(true)
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it "Docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "Returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe "#release_bike" do
    it "Releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "Raises error if no bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe "#dock" do
    it "Raises an error when full" do
      station = DockingStation.new
      20.times { station.dock(Bike.new) }
      expect { station.dock Bike.new }.to raise_error "Docking station full"
    end
  end
end

  