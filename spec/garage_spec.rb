require 'garage'
require 'docking_station'
require 'bike'

describe Garage do

  describe "vans taking broken bikes" do
    let(:broken_bike) {double :bike}
    station = DockingStation.new
    it "releases broken bikes" do
      allow(broken_bike).to receive(:working?).and_return(false)
      station.dock(broken_bike)
      expect(station.release_for_fixing).to eq(broken_bike)
    end

    it "vans deliver broken bikes to garage" do
    end
  end

  describe "vans collects released fixed bikes from garage" do

    it  "vans dock working bikes to docking station" do
    end

  end

end
