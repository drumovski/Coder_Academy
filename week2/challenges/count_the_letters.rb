# Write a method (more on methods here - we will be 
# 	covering this in class soon!) that will take 
# 	a string as an argument, and will return the count of each letter as a hash. 
# E.g. count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}	
# E.g. count_letters("Thats The Ticket") should 
# 	return {"T"=>3, "h"=>2, "a"=>1, "t"=>2, "s"=>1, "e"=>2, "i"=>1, "c"=>1, "k"=>1}
# E.g. count_letters("") should return {}
# We have written some test cases for this exercise. 
# 	Click the "Mark" button to check your solution.def count_letters(string)
	
def count_letters(string)
	hash = {}
	i=0
	puts "string in method is #{string}"
	string.each_char do |char|			
		if char != " "
			if hash[char] 
				hash[char] = hash[char] +1
			else
				hash[char] = 1 
			end
		end		
	end

	return hash
end

print "Enter string to count the letters: "
string = gets.chomp
puts count_letters(string)
