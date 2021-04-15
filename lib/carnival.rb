class Carnival
  attr_reader :name,
              :rides

  def initialize(name)
    @name = name
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def recommend_rides(attendee)
    ride_names = []
    @rides.each do |ride|
      ride_names << ride.name
    end
    ride_names

    attendee_interest = []
    ride_names.each do |ride_name|
      if ride_name == attendee.interests
        attendee_interest << ride_name
      end
    end
    attendee_interest
  end
end
