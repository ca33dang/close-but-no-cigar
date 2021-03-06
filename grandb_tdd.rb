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
	def test_off_by_one
		my_n = "1423"
		bash_n = ["1422", "1323", "1234", "4567"]
		assert_equal(false, off_by_one_number(my_n, bash_n))
	end
	def test_off_by_one_2
		my_n = "1555"
		bash_n = ["1556", "1656", "4567", "1901"]
		assert_equal(false, off_by_one_number(my_n, bash_n))
	end
	def test_off_by_one_3
		my_n = "1212"
		bash_n = ["6767", "3232", "2342", "6565"]
		assert_equal(false, off_by_one_number(my_n, bash_n))
	end
	def test_off_by_one_num
		my_n = "5555"
		bash_n = ["2322", "5555", "5152", "6565"]
		assert_equal(false, off_by_one_number(my_n, bash_n))
	end
	def test_9
		my_n = "2345"
		bash_n = ["2333", "5123", "7676", "2345"]
		assert_equal(false, off_by_one_number(my_n, bash_n))
	end
end