require 'docking_station'

describe DockingStation do
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end
  it { is_expected.to respond_to(:release_bike, :bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'should release a bike' do
  bike = subject.release_bike
  expect(bike).to be_working
  end

  it 'should dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'should return the docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
