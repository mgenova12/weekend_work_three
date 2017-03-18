# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:

# The ability to change a room number even after a reservation has already been created
puts "Testing HotelReservation class"
reservation = HotelReservation.new({customer_name: "Marco", date: "March 18 2017", room_number: "23"})
puts "Original room number"
p reservation.room_number
puts "Changed room number"
reservation.room_number = "35"
p reservation.room_number

puts
# The add_a_fridge method
puts "Your current amenities"
p reservation.amenities
puts "Adding a fidge to amenities"
reservation.add_a_fridge
p reservation.amenities

puts
# The add_a_crib method
puts "Your current amenities"
p reservation.amenities
puts "Adding a crib to amenities"
reservation.add_a_crib
p reservation.amenities

puts
# The add_a_custom_amenity method
puts "Your current amenities"
p reservation.amenities
puts "Adding a Valet service to amenities"
reservation.add_a_custom_amenity("Valet")
p reservation.amenities

