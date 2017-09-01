require './lib/docking_station.rb'

describe DockingStation do

  
  describe '#dock' do
   it 'docks bike' do
     bike = Bike.new
    expect(subject.dock(bike)).to eq([bike])
  end
end
  describe '#release_bike' do
  it 'release working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end
end


   it 'Raises an error when a bike is not present' do
     expect {subject.release_bike }.to raise_error 'This is a fail'
   end

   it "Tells you that Dock is full" do

    20.times  {subject.dock Bike.new}

     expect {subject.dock Bike.new}.to raise_error 'Dock full'
   end


end
