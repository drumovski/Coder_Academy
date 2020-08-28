# Greeting
# 1. Use a for loop to print and print a welcome message to each user.

# E.g.

# names = ["Bob", "Charlie", "Lin", "Nands", "Rachel", "Ben", "Isaac", "Hugh", "Ashley", "Brendon"]

# Output:

# Welcome Bob!
# Welcome Charlie!
# Welcome Lin!
# Welcome Nands!
# Welcome Rachel!
# (... and so on)

# 2. Do the same using a while loop.

# 3. Now use each
names = ["Bob", "Charlie", "Lin", "Nands", "Rachel", "Ben", "Isaac", "Hugh", "Ashley", "Brendon"]
n=0
puts "For loop:"
for students in names do
	puts "Welcome #{students}!"
	n += 1
end
puts"While loop:"
i=0
while names[i]
	puts "Welcome #{names[i]}!"
	i += 1
end
	
puts "Each loop:"
names.each { |student| puts "Welcome #{student}!"}

