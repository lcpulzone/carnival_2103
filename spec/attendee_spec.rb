require 'rspec'
require './lib/ride'
require './lib/attendee'

RSpec.describe Attendee do
  context 'initialization' do
    attendee = Attendee.new('Bob', 20)

    it 'exists' do
      expect(attendee).to eq(Attendee)
    end
  end
end
# attendee.name
# #=> "Bob"
# attendee.spending_money
# #=> 20
# attendee.interests
# #=> []
# attendee.add_interest('Bumper Cars')
# attendee.add_interest('Ferris Wheel')
# attendee.interests
# #=> ["Bumper Cars", "Ferris Wheel"]
