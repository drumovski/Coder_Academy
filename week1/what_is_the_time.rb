def whats_the_time (hour)
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
    puts "Dinner"
    when (hour > 20 or hour < 7)
    puts "Sleepy time"  
else
    puts "unexpected termination"
    end
    
end
    
    
#print "input the current hour of the day as an integer:"
#time = gets.chomp.to_i
time = 12
whats_the_time(time)


