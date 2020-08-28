# Write a method called print_num_letters that takes in an array of words and prints the each word and how many letters are in each word. 

# E.g. 

# print_num_letters(['apple', 'school', "bus", "blue", "cloud"]) should output:

# The word apple has 5 letters in it.
# The word school has 6 letters in it.
# ... and so on
# Suppose our method is passed some invalid values in the array that are not strings, like 'nil' and numbers. Add a begin/rescue block to your code to handle these invalid values and print an error message.

# E.g.

# print_num_letters(['apple', 'school', 3, 'blue', nil]) should output:

# The word apple has 5 letters in it.
# The word school has 6 letters in it.
# Invalid word given: 3
# ... and so on

def print_num_letters(words)
	n=0
	begin
		words.length.times do |i|
		puts "the word #{words[i]} has #{words[i].length} letters in it"
		rescue ArgumentError
			puts "There is an argument error dude"
		rescue TypeError
			puts "Wrong type dude"
		rescue SyntaxError
			puts "Wrong syntax dude"
		rescue 
			n+=1
			puts "Invalid word: #{words[i]} given: #{n}"
		end
	end	
end

print_num_letters(['apple', 'school', "bus", "blue", "cloud"])
print_num_letters(['apple', 'school', 3, 'blue', nil]) 
