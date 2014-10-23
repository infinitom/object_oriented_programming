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

	def read_instruction(instructions)
		
		rover=instructions.split(//)

		rover.each do |command|
			if command == "M"
				move 
			else
				turn(command)
			end
		end
	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1
		else
			puts "Direction unrecognized"
		end
	end

	def turn(face)
		if @direction == "N"
			if face == "L"
				@direction = "W"
			else
				@direction = "E"
			end
		elsif @direction == "E"
			if face == "L"
				@direction = "N"
			else
				@direction = "S"
			end
		elsif @direction == "S"
			if face == "L"
				@direction = "E"
			else
				@direction = "W"
			end
		elsif @direction == "W"
			if face == "L"
				@direction = "S"
			else
				@direction = "N"
			end
		end
	end	

	def to_s
		"position is now (#{@x}, #{@y}, \"#{@direction}\")"
	end
end

#Create Rovers
rover1 = Rover.new(1, 2,"N")
rover2 = Rover.new(3, 3,"E")


# Take Rover's instructions
puts "Welcome to mars"

puts "Please specify Rover 1's moves"
instructions = gets.chomp
rover1.read_instruction(instructions)


puts "Please specify Rover 2's moves"
instructions = gets.chomp
rover2.read_instruction(instructions)

puts "Rover1's new " + rover1.to_s
puts "Rover2's new " + rover2.to_s