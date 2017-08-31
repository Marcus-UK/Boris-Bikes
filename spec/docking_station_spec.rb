require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'release working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
   it 'docks bike' do
     bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end
  
end
