# Additional Challenge: If you used conditional (if/else) statements to write your program, 
# modify your code to use case statements instead. Or if you used case statements in your program, 
# 	try to use conditionals statements instead. 
# 	You should be able to achieve the same behavior! 
# Write a program that asks the user to input the current hour of the day as an integer. This integer represents the time on a 24hr clock. Use this value to tell the user what time of the day it is. If the time is:
#  Greater than 6, but smaller than 12, print "Good morning!"
# 12, print "Lunchtime" 
# Greater than 12, but lower than 19, print "Afternoon blues"
# 19 or 20, print "Dinnertime"
# Greater than 20, or smaller than 7, print "Sleepy time"
# Less than 0 or higher than 23, print "That is not correct 24hr time!"

print "input the current hour of the day as an integer:"
hour = gets.chomp.to_i

if (hour < 0 or hour > 23)
    puts "That is not correct 24hr time!"   
elsif (hour > 6 and hour < 12)
    puts "Good morning!"
elsif hour == 12
    puts "Lunchtime"
    elsif (hour >= 13 and hour < 19)
    puts "Afternoon blues"
elsif (hour == 19 or hour == 20)
    puts "Dinnertime"
elsif (hour > 20 or hour < 7)
    puts "Sleepy time"  
else
    puts "unexpected termination"
    
end
