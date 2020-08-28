# Part 1
def sum_array(array)
	sum = 0
	array.each do |n| 
		sum = sum + n
	end
	return sum
end
puts sum_array([10, 20, -10, 5, 0])
puts sum_array([3])
puts sum_array([])
# Part 2
def sum_two_arrays(array_one, array_two)
	sum = 0
	array_one.each do |n| 
		sum = sum + n
	end
	array_two.each do |n| 
		sum = sum + n
	end
	return sum
end
puts sum_two_arrays([10, 20, -10, 5, 0], [5, 3, -2])
puts sum_two_arrays([10, 20, -10, 5, 0], [2])
puts sum_two_arrays([3, 4, -9], [])
