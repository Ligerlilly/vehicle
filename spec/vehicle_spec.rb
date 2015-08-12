require 'rspec'
require './lib/vehicle'

describe Vehicle do
  before do
    @test_vehicle = Vehicle.new('Toyota', 'Prius', 2000)
  end
  describe '#make' do
    it 'returns the make of the vehicle' do

      #test_vehicle.save
      expect(@test_vehicle.make).to eq "Toyota"
    end
  end
  describe '#model' do
    it 'returns the model of the vehicle' do
      expect(@test_vehicle.model).to eq "Prius"

    end
  end
end
