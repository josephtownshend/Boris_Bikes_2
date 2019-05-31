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

  it 'raises error if docking station is at capacity' do
    docking_station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times {docking_station.dock(Bike.new)}
    expect {docking_station.dock(Bike.new)}.to raise_error('Max Capacity')
  end

end
