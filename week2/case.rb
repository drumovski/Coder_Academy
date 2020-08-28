# What time is it?
# We will use control flow to tell the user what time of the day it currently is. 
# Write a program that asks the user to input the current hour of the day as an integer. This integer represents the time on a 24hr clock. Use this value to tell the user what time of the day it is. If the time is:
#  Greater than 6, but smaller than 12, print "Good morning!"
# 12, print "Lunchtime" 
# Greater than 12, but lower than 19, print "Afternoon blues"
# 19 or 20, print "Dinnertime"
# Greater than 20, or smaller than 7, print "Sleepy time"
# Less than 0 or higher than 23, print "That is not correct 24hr time!"
# Additional Challenge: If you used conditional (if/else) statements to write your program, modify your code to use case statements instead. Or if you used case statements in your program, try to use conditionals statements instead. You should be able to achieve the same behavior! 
# E.g.
# Program is run and outputs: "What time is it?" 
# User inputs: 7
# Program is run and outputs: "Good morning!"
# E.g.
# Program is run and outputs: "What time is it?" 
# User inputs: 12
# Program is run and outputs: "Lunchtime"
# E.g.
# Program is run and outputs: "What time is it?" 
# User inputs: 15
# Program is run and outputs: "Afternoon blues"
# E.g.
# Program is run and outputs: "What time is it?" 
# User inputs: 19
# Program is run and outputs: "Dinnertime"
# and so on.
print "input the current hour of the day as an integer:"
hour = gets.chomp.to_i
case 
    when (hour < 0 or hour > 23)
    puts "That is not correct 24hr time!"   
    when (hour > 6 and hour < 12)
    puts "Good morning!"
    when hour == 12
    puts "Lunchtime"
    when (hour >= 13 and hour < 19)
    puts "Afternoon blues"
    when (hour == 19 or hour == 20)
    puts "Dinnertime"
    when (hour > 20 or hour < 7)
    puts "Sleepy time"  
else
    puts "unexpected termination"
    
end


