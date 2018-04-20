require 'docking_station'
require 'bike'

describe DockingStation do
let(:bike) { double :bike }

  it 'should release a working bike' do
    allow(bike).to receive(:working?).and_return(true)
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end


  it 'docks and states a bike' do
    new_bike = bike
    subject.dock(new_bike)
    expect(subject.bikes).to include(new_bike)
  end

  it 'release_bike raises an error when no bikes available' do
    expect { subject.release_bike }.to raise_error(RuntimeError, 'No Bikes')
  end

  it 'dock raises an error when bike capacity full' do
    times_to_run = subject.DEFAULT_CAPACITY + 1
    expect { times_to_run.times { subject.dock(bike) } }.to raise_error(RuntimeError, 'Capacity full')
  end

  it 'allows the user to set the capacity' do
    new_dock = DockingStation.new(15)
    expect(new_dock.DEFAULT_CAPACITY).to eq 15
  end

  it 'does not release a broken bike' do
    allow(bike).to receive(:working?).and_return(false)
    subject.dock(bike)
    expect { subject.release_bike }.to raise_error(RuntimeError, 'Bike is broken')
  end
end
