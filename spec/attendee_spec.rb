require 'rspec'
require './lib/ride'
require './lib/attendee'

RSpec.describe Attendee do
  context 'initialization' do
    attendee = Attendee.new('Bob', 20)

    it 'exists' do
      expect(attendee).to be_an_instance_of(Attendee)
    end

    it 'has a name' do
      expect(attendee.name).to eq("Bob")
    end

    it 'has spending_money' do
      expect(attendee.spending_money).to eq(20)
    end
  end
end
# attendee.interests
# #=> []
# attendee.add_interest('Bumper Cars')
# attendee.add_interest('Ferris Wheel')
# attendee.interests
# #=> ["Bumper Cars", "Ferris Wheel"]
