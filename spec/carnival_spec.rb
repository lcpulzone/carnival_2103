require 'rspec'
require './lib/carnival'
require './lib/attendee'
require './lib/ride'

RSpec.describe Carnival do
  context 'initialization' do
    jeffco_fair = Carnival.new("Jefferson County Fair")

    it 'exists' do
      expect(jeffco_fair).to be_an_instance_of(Carnival)
    end
  end
end
# jeffco_fair.name
# #=> "Jefferson County Fair"
# jeffco_fair.rides
# #=> []
# ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
# #=> #<Ride:0x00007fe59506ede8...>
# bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
# #=> #<Ride:0x00007fe594851930...>
# scrambler = Ride.new({name: 'Scrambler', cost: 15})
# #=> #<Ride:0x00007fe59314eb98...>
# jeffco_fair.add_ride(ferris_wheel)
# jeffco_fair.add_ride(bumper_cars)
# jeffco_fair.add_ride(scrambler)
# jeffco_fair.rides
# #=> [#<Ride:0x00007fe59506ede8...>, #<Ride:0x00007fe594851930...>, #<Ride:0x00007fe59314eb98...>]
# bob = Attendee.new('Bob', 20)
# #=> #<Attendee:0x00007fe59507dc80...>
# sally = Attendee.new('Sally', 20)
# #=> #<Attendee:0x00007fe593ac3318...>
# bob.add_interest('Ferris Wheel')
# bob.add_interest('Bumper Cars')
# sally.add_interest('Scrambler')
# jeffco_fair.recommend_rides(bob)
# #=> [#<Ride:0x00007fe59506ede8...>, #<Ride:0x00007fe594851930...>]
# jeffco_fair.recommend_rides(sally)
# #=> [#<Ride:0x00007fe59314eb98...>]
