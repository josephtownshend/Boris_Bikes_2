require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }


  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "raise error if there's no bike" do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error('No bike')
  end

  it 'raise error if the docking station already contains a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    bike2 = Bike.new
    expect { docking_station.dock(bike2) }.to raise_error('Full')
  end


end
