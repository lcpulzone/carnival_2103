require 'rspec'
require './lib/ride'
require './lib/attendee'

RSpec.describe Ride do
  context 'initialization' do
    ride = Ride.new({name: 'Ferris Wheel', cost: 0})

    it 'exists' do
      expect(ride).to be_an_instance_of(Ride)
    end

    it 'has a name' do
      expect(ride.name).to eq("Ferris Wheel")
    end
  end
end

# ride.cost
# #=> 0
