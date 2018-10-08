require "minitest/autorun"
require_relative "grandbash.rb"
class Test_grandbash < Minitest::Test
	def test_begin
		assert_equal(1, 1)
	end
	def test_for_empty_array
		my_n = "1233"
		bash_n = ["1112", "1345", "2345", "1233"]
		assert_equal(0, how_many_match(my_n, bash_n))
	end
	def test_my_winning_n
		my_n = "7676"
		bash_n = ["1234", "5234", "6862", "9090", "7578", "7777"]
		assert_equal(0, how_many_match(my_n, bash_n))
	end
	def test_win_2
		my_n = "7777"
		bash_n = ["4567", "7777", "5346", "7776"]
		assert_equal(0, how_many_match(my_n, bash_n))
	end
	def test_winning_3_tickets
		my_n = ["2345", "7616", "2130"]
		bash_n = ["7616", "2345", "2130"]
		assert_equal(1, how_many_match(my_n, bash_n))
	end
end