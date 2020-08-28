# # Shopping List
# 1. Create a variable (array) called shopping_list 

# 2. Save 5 items you need to buy into this variable 

# 3. Assign the value of shopping list to a new variable called updated_shopping_list 

# 4. Modify updated_shopping_list. Delete a couple of items, and add a few new ones in

# 5. Print the values of updated_shopping_list to the screen 

# 6. Then print the values of shopping_list to the screen 

# 7. So, your changes have altered both variables!! 

# 8. Using the Ruby docs, see if you can find a method that 
# will allow you to make changes to your updated_shopping_list, without affecting shopping_list

# 9. Using the Ruby docs, try to find a built-in Ruby method 
# to randomize the order of items in updated_shopping_list
shopping_list = Array.new
puts shopping_list
shopping_list.push("milk","peas","toilet paper","machine gun","baked beans")
updated_shopping_list = shopping_list
updated_shopping_list.push("lemons", "oranges")
updated_shopping_list.delete("milk")
updated_shopping_list.delete("baked beans")
puts "shopping list is #{shopping_list} and the updated shopping list is #{updated_shopping_list}"
shopping_list = shopping_list.shuffle
puts "shopping list is #{shopping_list} and the updated shopping list is #{updated_shopping_list}"

