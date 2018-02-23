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


  it 'should dock a bike' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to eq station.array_of_bikes
  end

end
