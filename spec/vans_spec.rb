require 'bike.rb'
require 'vans.rb'

describe Vans do
  #initialize vans as an array
  #can it add bikes to the array
  it "carries bikes in an array" do
    expect(subject.bikes_on_board).to be_instance_of(Array)
  end
end
