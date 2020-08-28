class Dog
  
  def initialize(dog_name, dog_age, dog_weight)
    @name = dog_name
    @age = dog_age
    @walks = 0
	  @weight = dog_weight
    puts "I've been initialized!"
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

doggo = Dog.new('Waffles', 2, 15)
doggo.speak
pupper = Dog.new('Clifford', 5, 12)
pupper.speak
doggo.get_weight
doggo.walk
doggo.walk.walk.walk.display_walks.add_weight(3)


