# Classes are basically new types of objects that can be used in Ruby.
# Types can be things like the universal string, integer, whatever. We are extending
# that framework by creating classes that are unique to our programs.

#Module and classes name then with camel case

# Variables that exist
# instance, @blah
# global, $blah
# local, blah
# class, @@blah


my_variable = "something" #This is a local variable in the global scope, but not a global variable
$my_global_variable = "something" # This is a global variable, it's not best practice to use because it can pollute the global scope aka the root scope


# Ruby's global scope variables not defined explicitly as global are not inherited by methods or classes.


#example coordinate system
class Point

	# instead of writing explicit reader methods
		attr_reader :x, :y #get-er (reader method)
	attr_writer :x, :y #set-er (writer method)

	# this negates writing the above two attr_reader,
	# attr_writer explicity. But its not safe
	# as it allows both read and write from the outside.
	# Generally very useful stuff.
	attr_accessor :x, :y




	# @@my_class_variable = "I can now be accessed from the class"

	def initialize (x, y) 
	#this is just a method to instantiate (instance) the class, it is called when .new 
	#is used to create a new object from this class
		# local = "This is a local variable that only lives inside thsi method"
		@x = x # This instance variable is available anywhere inside the object
		@y = y # This instance variable is available anywhere inside the object
	end

	def display
		"#{@x}, #{@y}"
	end

	def to_s 
		# this is the same as the .to_s method in rest of ruby,
		# but we're adding it to our custom class
		"#{@x}, #{@y}"
	end

	#Get-er methods (Reader methods)- methods to get the state of the instance variables
	
	#Set-er methods (Writer methods) - methods to set the instance variable


	# # Get-er method
	# def x
	# 	@x	
	# end

	# def y
	# 	@y	
	# end

	#Set-er methods (Writer methods) - methods to set the instance variable
	def x=(new_x) # The ruby way to write this, we can do get_whatever but thats noobish
		@x = new_x	
	end

	def y=(new_y) # The ruby way to write this, we can do get_whatever but thats noobish
		@y = new_y		
	end


	# read about operation overload, which are shortcuts for operators
	def +(point)
		Point.new(@x +point.x, @y + point.y)
	end


end

point = Point.new #when new is called it triggers the class's initialize method with the values passed in

point1 = Point.new (1,2)
point2 = Point.new (2,4)



puts point1.display
# or since we have .to_s inside the classs, we can do:
puts point1 #because puts calls the .to_s

# since puts calls the .to_s (string method)


## DONT REPEAT YOURSELF   D - R - Y. 
# Having to change things in too many places makes it error prone.



#Multiple inheritance to bring behaviours from others 
module BeingonEarth
	def gravity
		
	end
end

class Rock
	include BeingOnEarth
end

class Person
	include BeingOnEarth
end


# Wrapping classes within a module gives those classes 
# a context within that module. this means you can have your own class like user
# and when using a twitter library, it may have it's own similarly named class named user,
# but it wont conflict with yours

module GridSystem
	class Point
	end

	class Line
	end

	class Vector
	end
end


#this is done  to reference and instantiate
# a class within a module
point = GridSystem::Point.new 


