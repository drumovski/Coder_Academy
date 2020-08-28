# Develop a dynamic greeting based on the time. 
# Run the program after each step to check that it works

# Create a variable called time and store a non-negative integer in that variable
# Use conditionals to say
#    “Good morning!” if it’s before 12
#    “Good afternoon!” if it’s 12 or later
#    “Thats not a time!” if it’s larger than 24


def time_checker (t)
	if 
		t < 12
		puts "Good morning!"
	elsif 
		t >= 12 && t < 24
		puts "Good afternoon!"
	else
		puts "That's not a time!"
	end
end

time = 25
time_checker(time)
