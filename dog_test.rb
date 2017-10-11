require 'minitest/autorun'
require_relative 'dog'
#require_relative 'animals'

class DogTest < Minitest::Test
	def setup
		@dog = Dog.new("")
		
	end

#testing dog to see if it contain a property of speed
	def test_initialize_with_no_arguments
		assert_equal 0, @dog.speed
		
	end

#testing to see if it will take a number
	def test_if_speed_is_an_accessible_property
		@dog.speed = 5
		assert_equal @dog.speed, 5
	end


	def test_if_speed_is_a_number
		@dog.speed = 5
		assert_instance_of Integer, @dog.speed
		@dog.speed = 7.123
		assert_instance_of Float, @dog.speed
	end

	def test_instance_of_dog
		assert_instance_of Dog, @dog
	end

end