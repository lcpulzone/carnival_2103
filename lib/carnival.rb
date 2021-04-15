class Carnival
  attr_reader :name,
              :rides,
              :attendees

  def initialize(name)
    @name = name
    @rides = []
    @attendees = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def recommend_rides(attendee)
    ride_names = []
    @rides.each do |ride|
      ride_names << ride.name
    end

    attendee_interest = []
    ride_names.each do |name|
      attendee.interests.each do |interest|
        if interest == name
          attendee_interest << name
        end
      end
    end
    attendee_interest
  end
end
