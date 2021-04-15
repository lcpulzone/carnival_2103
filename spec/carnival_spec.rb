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

      expect(jeffco_fair.recommend_rides(sally)).to eq(['Scrambler'])
    end
  end

  context 'admit' do
    jeffco_fair = Carnival.new("Jefferson County Fair")
    ferris_wheel = Ride.new({name: 'Ferris Wheel', cost: 0})
    bumper_cars = Ride.new({name: 'Bumper Cars', cost: 10})
    scrambler = Ride.new({name: 'Scrambler', cost: 15})

    bob = Attendee.new("Bob", 0)
    sally = Attendee.new('Sally', 20)
    johnny = Attendee.new("Johnny", 5)

    jeffco_fair.add_ride(ferris_wheel)
    jeffco_fair.add_ride(bumper_cars)
    jeffco_fair.add_ride(scrambler)

    it 'starts with no attendees' do
      expect(jeffco_fair.attendees).to eq([])
    end

    it 'can add attendees' do
      bob.add_interest('Ferris Wheel')
      bob.add_interest('Bumper Cars')
      sally.add_interest('Bumper Cars')
      johnny.add_interest('Bumper Cars')

      jeffco_fair.admit(bob)
      jeffco_fair.admit(sally)
      jeffco_fair.admit(johnny)

      expect(jeffco_fair.attendees).to eq([bob, sally, johnny])
    end

    it 'can return a hash of attendees and their interests' do
      expected = {
              ferris_wheel => [bob],
              bumper_cars => [bob, sally, johnny],
              scrambler => []
      }

      expect(jeffco_fair.attendees_by_ride_interest).to eq(expected)
    end
  end
end
