#
# OOP Exercise - people.rb
#

# Person Class
class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def hello
		"Hi, my name is #{@name}"
	end
end


# Teacher Class
class Teacher < Person
	
	def teach
		"Everything in Ruby is an Object"
	end
end


# Student Class
class Student < Person

	def learn
		"I get it!"
	end
end





# Instantiate a Teacher object
chris = Teacher.new("Chris")
puts chris.hello

# Instantiate a Student object
cristina = Student.new("Cristina")
puts cristina.hello


#Teacher teaches
puts chris.teach

#students learns
puts cristina.learn

# The below erreneous calls will not work because a Student object
# does not have the tech method defined, and a Teacher object
# can't call the learn method for the same reason - 
# although, philosophically speaking, 
# a student must surpass the teacher for the teacher
# to have done their job
puts cristina.teach
puts chris.learn