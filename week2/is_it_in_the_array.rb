# Is it in the array?
# Part 1
# Write a loop to check whether a particular value is in a given array. If there are multiple occurrences of the value in the array, "Found in array" should only be printed once.

# E.g. 

# numbers = [4, 5, 3, -7, 20, 0]

# value = 5

# Output: "Found in array"

# E.g. 

# numbers = [4, 5, 3, -7, 20, 0]

# value = 6

# Output: "Not found in array"

# E.g. 

# numbers = [4, 5, 3, -7, 20, 0, 5]

# value = 5

# Output: "Found in array"

# Part 2
# Rewrite your code for Part 1 using a built-in Ruby function instead of a loop. 

# Part 3
# Write a method to check whether a particular name is in an array of names (case insensitive). A method is a block of code that groups together certain lines of code (We'll be covering this next week - In the meantime, you can read more about methods here.) The basic outline of method has been written for you. 

# E.g. 
# names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]
# is_name_in_array(names, "carl")

# Output: "Found in array"

# Eg.

# names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

# is_name_in_array(names, "bob")

# Output: "Not found in array" 

# E.g.

# names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

# is_name_in_array(names, "Lin")

# Output: "Found in array"
puts "loop method:"
numbers = [4, 5, 3, -7, 20, 0, 5]
value = 5
found = false
numbers.each do |i|
	if value == i
		puts "Found in array"
		found = true
		break
	end
end
	if !found
		puts "Not found in array"
	end
	
puts "Ruby method method:"
if numbers.include?(value)
	puts "Found in array"
else 
	puts "Not found in array"
end

puts "Custom method method:"
names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]
def is_name_in_array(arr, name)
	if arr.include?(name)
		return "Found in array"
	else
		return "Not found in array"
	end
end

puts is_name_in_array(names, "carl")
