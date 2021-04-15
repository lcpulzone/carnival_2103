class Ride
  attr_reader :name

  def initialize(ride_params)
    @name = ride_params[:name]
    @cost = ride_params[:cost]
  end
end
