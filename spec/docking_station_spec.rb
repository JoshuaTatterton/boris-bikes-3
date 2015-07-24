require './lib/docking_station.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'releases working bikes' do
    subject.dock(double :bike, broken?: false)
    bike = subject.release_bike
    expect(bike).not_to be_broken
end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'raises an error when trying to release broken bike' do
      bike = double :bike, broken?: true
      subject.dock bike
      expect { subject.release_bike}.to raise_error 'Can not release broken bike'
    end
  end

  describe '#dock' do
   it 'raises an error when full' do
     subject.capacity.times { subject.dock (double :bike) }
     expect { subject.dock (double :bike) }.to raise_error 'Docking station full'
   end

end

end
