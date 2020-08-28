# Another reason we use errors in our programs is for data validation. We've defined a dog class with an init method that sets name and weight. We want to make sure that the weight passed in is a valid number, so we want to set the name and weight instance variables only if a valid weight is passed. 

# Our initialize method should: 

# Raise an ArgumentError and print an error message in our init method if the weight is 0. 

# Otherwise, set the name and weight instance variables as we normally would. 

# E.g. 

# dog = Dog.new("Cliff", 0) should output:

# Error: Weight must not be 0
# dog = Dog.new("Cliff", 7) should output:

# Cliff has a weight of 7kg.
# Additional Challenge: Suppose we want to set our dog's name even if an invalid weight was passed and print a message like "Cliff was created!" How could we do this? 
class InvalidWeightError < StandardError
end

def validate_weight(weight)
	puts "Validation in progress up here..."
	if weight == 0
		raise InvalidWeightError, "terror statement"    
  else
#		raise InvalidWeightError, "the dog cannot weigh 0, your dog must be dead" if weight == 0
		return weight
  end
end

class Dog
  
  def initialize(dog_name, dog_age, dog_weight)
    @name = dog_name
    @age = dog_age
    @walks = 0
	@weight = dog_weight
    puts "#{@name} has been initialized!"
  end
  
  def add_weight(add)
    puts "I was #{@weight}"
    @weight = @weight + add
    puts "I am now #{@weight} kg's"
    return self
  end
  
def display_walks
  puts "#{@name} has been for #{@walks} walks"
  return self
end
	
def get_weight
  puts "#{@name} weighs #{@weight} kg."
  return self
end

def walk
  @walks += 1
  return self
end
	
  def speak
    puts "#{@name} says woof! I am #{@age} years old."
    return self
  end
	
end
#End of class


def get_new_dog
	puts "Enter dog name: "
	name = gets.chomp
	puts "Enter dog age: "
	age = gets.chomp.to_i
	begin
	  puts "Enter dog weight: "
	  weight = gets.chomp.to_i
  	weight = validate_weight(weight)    
  	rescue InvalidWeightError => e
		 puts "#{e.message}"
	  retry
		end
  doggo = Dog.new(name, age, weight)
end
doggo = get_new_dog
puts doggo
puts doggo.get_weight
