# Fun Fact Generator
# We will create a fun fact generator using gems! One you could use is is the ' ‘faker’ gem -> https://github.com/stympy/faker (Alternatively, browse for other gems at at RubyGems.org.) 

# For this challenge, work on your local dev environment so that you will be able to install and use gems.

# In your program:

# Create a loop/method that will greet the user and ask if they want a fun fact

# Use faker (or the gem of your choice) to display the fact, then ask the user if they would like another fact

# If they want another fact, give them another one, else exit the app with a farewell message

# Extra Challenge: 

# Include another gem, such as colorize, to make your app super cool!!

require 'faker'

quit = false
while !quit
    print "Hi mate, would you like a famous last quote? Y/N :"
    answer = gets.chomp.downcase
    if answer == "y"
        puts Faker::Quote.famous_last_words
    elsif answer == "n"
        quit = true
    else
        puts "Sorry mate, didn't quite catch that, can you say it again?"
    end
end