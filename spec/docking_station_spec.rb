require 'docking_station'

describe DockingStation do
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#realse_bike' do

  it 'should release a bike' do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.release_bike).to eq bike
  end

  it 'raises error when no bikes available' do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error("sorry, no bikes available")
  end

  end

describe '#dock' do

  it 'should dock a bike' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to eq station.array_of_bikes
  end

  it 'should raise error of no more available spaces' do
    station = DockingStation.new
    station.max_cap.times {station.dock(Bike.new)}
    expect {station.dock(Bike.new)}.to raise_error 'Sorry, Docking station full'
  end
end
end
