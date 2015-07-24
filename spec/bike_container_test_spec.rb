# The purpose of this class is to give us an instance of
# something that includes `BikeContainer`, to initially run tests against
require 'bike_container.rb'
require './spec/support/shared_examples_for_bike_container.rb'

class BikeContainerTest
  include BikeContainer
end

# `it_behaves_like BikeContainer` imports all the tests in the shared example
describe BikeContainerTest do
  it_behaves_like BikeContainer
end
