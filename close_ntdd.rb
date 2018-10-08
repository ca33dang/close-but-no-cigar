require "minitest/autorun"
require_relative "close_no.rb"
class Test_close_no < Minitest::Test
	def test_1_equals_1
		assert_equal(1, 1)
	end
	def test_for_empty_array
		my_n = "1234"
		bash_n = []
		assert_equal([], grand_bash(my_n, bash_n))
	end
	def test_1234
	my_n = "1234"
		bash_n = ["1234"]
		assert_equal(["1234"], grand_bash(my_n, bash_n))
	end
	def test_array_3_numbers
		my_n = "1234"
		bash_n = ["1233", "1345", "3445"]
		assert_equal([], grand_bash(my_n, bash_n))
	end
	def test_array_4_n
		my_n = "3456"
		bash_n = ["1123", "3456", "6543", "1342"]
		assert_equal(["3456"], grand_bash(my_n, bash_n))
	end
	def test_array_5_n
		my_n = "3345"
		bash_n = ["1234", "2345", "3455", "5673", "3345"]
		assert_equal(["3345"], grand_bash(my_n, bash_n))
	end
	def test_array_6
		my_n = "6565"
		bash_n = ["2345", "1234", "2345", "4567", "5656", "2112"]
		assert_equal([], grand_bash(my_n, bash_n))
	end
end