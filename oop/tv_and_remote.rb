# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 
  class Tv 
    attr_accessor :power, :volume, :channel

    def initialize(input)
      @power = input[:power] 
      @volume = input[:volume]
      @channel = input[:channel]
    end

  end

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class Remote 
  def initialize(tv)
    @tv = tv
  end

  def toggle_power 
    @tv.power == "on" ? "off" : "on"
  end

  def increment_volume
    @tv.volume += 1 
  end

  def decrement_volume
    @tv.volume -= 1 
  end

  def set_channel(int)
    @tv.channel = int
  end

end

puts "Testing Tv class"
tv = Tv.new({power: "off", volume: 5, channel: 27})

puts "------------------------"
puts "checking power"
p "The power is #{tv.power}"
if tv.power == "off"
  puts "PASS!"
else
  puts "F"
end

puts 
puts "checking volume"
p "The volume is #{tv.volume}"
if tv.volume == 5
  puts "PASS!"
else
  puts "F"
end

puts 
puts "checking channel"
puts "The channel is #{tv.channel}"

if tv.channel == 27
  puts "PASS!"
else
  puts "F"
end

puts 
puts "Testing Remote class"
remote = Remote.new(tv)
puts "------------------------"
puts "Turning power on"
if remote.toggle_power == "on"
  puts "PASS!"
else
  puts "F"
end
puts "The power is now #{tv.power}"


puts 
puts "Turning volume up"
if remote.increment_volume == 6
  puts "PASS!"
else
  puts "F"
end
puts "The volume is now #{tv.volume}"

puts
puts "Turning volume down"
if remote.decrement_volume == 5
  puts "PASS!"
else
  puts "F"
end
puts "The volume is now #{tv.volume}"


puts 
puts "Changing channel to 20"
if remote.set_channel(20) == 20
  puts "PASS!"
else
  puts "F"
end
puts "The channel is now #{tv.channel}"





