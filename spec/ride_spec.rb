require 'rspec'
require './lib/ride'
require './lib/attendee'

RSpec.describe Ride do
  context 'initialization' do
    ride = Ride.new({name: 'Ferris Wheel', cost: 0})

    it 'exists' do
      expect(ride).to be_an_instance_of(Ride)
    end
  end
end
# ride.name
# #=> "Ferris Wheel"
# ride.cost
# #=> 0
