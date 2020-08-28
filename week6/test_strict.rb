require 'test/unit'
require_relative 'strict'
class StrictTests < Test::Unit::TestCase
	
	def test_strict_false
		test = in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], true)
		assert_equal(test, false)
	end
	
	def test_strict_true
		test = in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], false)
		assert_equal(test, true)
	end
end

