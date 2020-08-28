eating_in = {:Breakfast => "Yoghurt & Museli",
	:Lunch => "Sandwich",
	:Dinner => "Curry & Rice"  }

eating_out = {:Breakfast => 12, :Lunch => 15,
	:Dinner => 25 }

# Using the same .each method within the example, 
# iterate through the Hash and "puts" the 
# key & values out
eating_out.each { |k,v| puts "The #{k} is #{v}"}
