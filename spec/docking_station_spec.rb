require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#dock' do
   it 'docks bike' do
     bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  describe '#release_bike' do
  it 'release working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  describe '#dock' do
   it 'docks bike' do
     bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

   it 'Raises an error when a bike is not present' do
     expect {subject.release_bike }.to raise_error 'This is a fail'
   end


end
