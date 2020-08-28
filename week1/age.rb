
# Exercise 2:

# Write a program that asks for a user's age and if they are a citizen, 
# and then output whether or not they can vote. 
# A person can vote if they are at least 18 years old and a citizen. Use a ternary operator!
# E.g.
# “How old are you?” 18
# “Are you a citizen?” yes
# "You are eligible to vote!"
#  E.g.
# “How old are you?” 25
# “Are you a citizen?” no
# "You are ineligible to vote!"
# E.g.

# “How old are you?” 16
# “Are you a citizen?” yes
# "You are ineligible to vote!"
print "what is your age? "
age = gets.chomp.to_i
print "are you a citizen? y or n: "
citizen = gets.chomp
(age >= 18 && citizen == "y")? (puts "You are eligible to vote!") : (puts "You are ineligible to vote!")

