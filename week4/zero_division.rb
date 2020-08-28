# Write a program that asks the user to input two numbers, divides them, then prints the result. 

# Use error handling to print "Got a Zero Division Error. Try again!" if they entered a 0 or other invalid input as the second number (divisor).

#  Continue asking the user to input two new numbers if this happens. 

# Otherwise, print the result and exit the program.
begin	
	puts "Enter first number: "
	num1 = gets.chomp.to_i
	puts "Enter second number: "
	num2 = gets.chomp.to_i

	answer = num1 / num2
	puts "#{num1} divided by #{num2} is #{answer}"
rescue ZeroDivisionError
	puts "Does not compute dude, you're like asking me to divide by like zero or something. My brain hurts."
rescue
	puts "Some error dude I don't even know what error but it hurts still"
    retry
end
