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

  def admit(attendee)
    @attendees << attendee
  end

  def attendees_by_ride_interest
    rides_by_interest = Hash.new { |hash, key| hash[key] = [] }
    @rides.each do |ride|
      rides_by_interest[ride] = [@attendee]
      rides_by_interest[ride] << [@attendee]
    end
    rides_by_interest
  end
end
