require "garage"
require 'support/shared_examples_for_bike_container.rb'

describe Garage do

  it_behaves_like BikeContainer

#  it "fixes broken bikes" do
#  	bike = double :bike, broken?: true
#  	subject.add_bike bike
#  	bike = subject.release_bike
#  	expect(bike).to eq (double :bike, broken?: false)
#  end
end