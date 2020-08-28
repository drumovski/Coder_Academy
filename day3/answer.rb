#Input
puts "What is your name?"
name = gets.chomp
puts "Hi #{name}! How old are you?"

age = gets.to_i
puts "Wow! You are #{age} years old. Congratulations!"
remaining_age = 100 - age
puts "#{name}, in #{remaining_age} you will be 100 years old"
