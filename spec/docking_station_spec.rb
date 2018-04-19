require 'docking_station'
require 'bike'

describe DockingStation do

  it 'should respond to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'should release a working bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_working
  end

  it 'should allow a bike to be docked' do
    expect(subject).to respond_to(:dock)
  end

  it 'should respond to bike method' do
    expect(subject).to respond_to(:bikes)
  end

  it 'docks and states a bike ' do
    new_bike = Bike.new
    subject.dock(new_bike)
    expect(subject.bikes).to include(new_bike)
  end

  it 'release_bike raises an error when no bikes available' do
    expect { subject.release_bike }.to raise_error(RuntimeError, 'No Bikes')
  end

  it 'dock raises an error when bike capacity full' do
    expect { 21.times{subject.dock(Bike.new)} }.to raise_error(RuntimeError, 'Capacity full')
  end

end
