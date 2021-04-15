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

    it 'has a name' do
      expect(jeffco_fair.name).to eq("Jefferson County Fair")
    end

    it 'starts with no rides' do
      expect(jeffco_fair.rides).to eq([])
    end
  end

  context 'rides' do
    jeffco_fair = Carnival.new("Jefferson County Fair")
    ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
    bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
    scrambler = Ride.new({name: 'Scrambler', cost: 15})

    it 'can add rides' do
      jeffco_fair.add_ride(ferris_wheel)
      jeffco_fair.add_ride(bumper_cars)
      jeffco_fair.add_ride(scrambler)

      expected = [ferris_wheel, bumper_cars, scrambler]

      expect(jeffco_fair.rides).to eq(expected)
    end

    it 'can recommend rides' do
      bob = Attendee.new('Bob', 20)
      sally = Attendee.new('Sally', 20)

      bob.add_interest('Ferris Wheel')
      bob.add_interest('Bumper Cars')
      sally.add_interest('Scrambler')

      expected = ['Ferris Wheel', 'Bumper Cars']

      expect(jeffco_fair.recommend_rides(bob)).to eq(expected)
    end
  end
end

# #=> [#<Ride:0x00007fe59506ede8...>, #<Ride:0x00007fe594851930...>]
# jeffco_fair.recommend_rides(sally)
# #=> [#<Ride:0x00007fe59314eb98...>]
