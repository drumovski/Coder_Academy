def print_greeting(name)
	puts "Hi, my name is #{name}"
end
print_greeting("Jason")

def add_two(number)
	new_number = number + 3
	return new_number
end
puts add_two(4)

def return_last_two_nums(names)
	
	return names.last(2)
end

puts return_last_two_nums(["sara", "james", "martha", "charlie"])
p return_last_two_nums(["sara", "james"])

