require 'bike'

describe Bike do
  bike = Bike.new

  it "should respond to working? method" do
    expect(bike).to respond_to(:working?)
  end

  it "should we set-able to not working" do
    bike.broken
    expect(bike.working?).to eq false
  end

end
