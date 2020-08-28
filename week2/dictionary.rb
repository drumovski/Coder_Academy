# Dictionaries are a great example of Hashes.

# A dictionary has a Word (or Key) and it has it's meaning (Value) 

# In this lesson we will cover 

# how to update a Hash's  Values    &    Keys

# how to create and merge a Hash 

# What happens when we request info from a Hash when it doesn't exist

# Documentation Link: https://ruby-doc.org/core-2.2.0/Hash.html

# Challenge

# Dictionaries are a great example of Hashes. 
# A dictionary has a Word (or Key) and it has it's meaning (Value) 

# Below we have a dictionary hash that lists numbers from 1 to 3.

# dictionary = { "one" => 1, "two" => 2, "three" => 3 }
# Change the Keys to Symbols

# Here is a new_dictionary with 3 more keys. 

# new_dictionary = {:four => 5, :five => 6, :six => 4}
# Update ONLY the value to the correct values of 4, 5, & 6

# Let's make sure that it is all working, can you "puts" the fourth key's value of dictionary out ?

# i.e. puts dictionary[:four]

# What?? There is none? 

# Combine/merge both hashes so there will be! 

# Would it be easier to write only the numeral instead of the entire string? 

# flip/ invert the values of the new Hash with the keys
# to refer back to an altered hash, make sure you make a shallow copy with clone or duplicate


new_dictionary = {:four => 5, :five => 6, :six => 4}
dictionary = { "one" => 1, "two" => 2, "three" => 3 }
old_new_dictionary = new_dictionary.dup
old_dictionary = dictionary.dup
#Change the Keys to Symbols
dictionary.transform_keys! { |k| k.to_sym}


#Update ONLY the value to the correct values of 4, 5, & 6
new_dictionary[:four] = 4
new_dictionary[:five] = 5
new_dictionary[:six] = 6

# Let's make sure that it is all working, 
# can you "puts" the fourth 
# key's value of dictionary out ?
puts dictionary[:four]

#Combine/merge both hashes so there will be! 
combined_dictionary = dictionary.merge(new_dictionary)
puts combined_dictionary
#flip/ invert the values of the new Hash with the keys
swapped_dictionary = combined_dictionary.invert
puts swapped_dictionary
puts "old dictionary is #{dictionary}"
puts "old new dictionary is #{old_new_dictionary}"
