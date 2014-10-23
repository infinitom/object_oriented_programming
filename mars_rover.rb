#
# OOP Exercise - mars_rover.rb
# A simple exercise to move an object on a grid using inputs such as
# Command - L (spin robot 90 degrees counter clockwise)
# Command - R (spin robot 90 degrees counter clockwise)
# Command - M (move forward in spun direction by one point)
#

class Rover
	attr_accessor :x, :y, :direction

	def initialize(x,y,direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction

	end

	def move
	
	end

	def turn
	
	end	

end

#Create Rovers
rover1 = Rover.new(0,0,N)


# Take Plateau Size
# puts "Welcome to mars, please specify the plateau size"
# plateau = gets.chomp

