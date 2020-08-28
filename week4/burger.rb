# Use the starter code to complete the following challenges:

# Cheese feature

# Add a default  Boolean value of true for cheese (the burger either has cheese or it doesn’t)

# Add cheese to initialize (including a 3rd parameter) and to_s

# Add a getter for cheese

# Change the new call in main to pass true or false for cheese

# Use a puts in the main program to test the getter

# Condiments feature

# Add an optional attribute for an array of condiments

# Add condiments to initialize and the to_string method

# Add a getter for condiments

# Use a puts to test the getter

# Create two more burgers and display each of them using puts

# Add a method toggle_cheese to change the value of cheese from true to false and vice-versa

# Call toggle_cheese for each of the hamburgers you have created and display them again

# Add an attribute accessor to each attribute variable of the Hamburger class, directly below the first line of the class declaration

# Test the accessor for hamburger1 by adding the following code

# puts "Using the accessor for bun #{hamburger1.bun}"
# puts "Using the accessor for patty #{hamburger1.patty}"
# Add an accessor for condiments and cheese

# Test the accessors for each of the hamburgers

# Add a method called is_vegetarian? to check if the hamburger is vegetarian and return true or false

class Hamburger
  attr_accessor :cheese
  attr_accessor :condiments
  attr_accessor :bun
  attr_accessor :patty

  
  def initialize(patty, bun, cheese=true, condiments=["ketchup", "mustard"])
    @patty = patty
    @bun = bun  
    @cheese = cheese
    @condiments = condiments
  end

  def to_string
    if cheese
      "#{@patty} patty on a #{@bun} bun with cheese"
    else
      "#{@patty} patty on a #{@bun} bun"
    end
  end
  
  def change_cheese
    @cheese = !@cheese
  end
end

hamburger1 = Hamburger.new('beef', 'sesame seed', false)
puts hamburger1
puts hamburger1.cheese
puts hamburger1.condiments
hamburger2 = Hamburger.new('beef', 'sesame seed', true, ["ketchup"])
hamburger3 = Hamburger.new('beef', 'sesame seed', false, [])
puts hamburger2.cheese
hamburger2.change_cheese
puts hamburger2.cheese
puts "Using the accessor for bun #{hamburger1.bun}"
puts "Using the accessor for patty #{hamburger1.patty}"
