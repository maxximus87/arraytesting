require 'minitest/autorun'
require_relative 'reverse.rb'

class TestMyReverse < Minitest::Test
	def test_reverse_of_empty_array
		arr = []
		assert_equal([], arr.my_reverse())
	end

	def test_reverse_array
		arr = [1,2,3,4]
		assert_equal([4,3,2,1], arr.my_reverse())
	end

	def test_empty_index
		arr = []
		assert_equal({}, arr.my_index())
	end

	def test_last_index_value
		arr = ["a", "b", "c", "a", "b", "d", "c"]
		assert_equal({"a"=> 3, "b"=> 4, "c"=> 6, "d"=> 5}, arr.my_index())
	end

	def test_index_position
		arr = ["a", "b", "c", "a", "b", "d", "c"]
		assert_equal({"a"=>[0,3], "b"=>[1,4], "c"=>[2,6], "d"=>[5]}, arr.my_index_position())
	end
end