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
end