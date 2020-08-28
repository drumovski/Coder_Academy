# Inheritance is another way Ruby lets us reuse our code and helps us define logical relationships between our classes.

# Below we have a dog class as covered in class.

# Dog class
# An Animal class has be defined for you. Create a Dog class that inherits from Animal that sets num_legs to 4 by default. (Hint: You can use the super keyword!) 

#          E.g. dog = Dog.new("Clifford")

# Next, create a bark method that prints "woof woof" and your dog's name. 

#          E.g.

# dog = Dog.new("Clifford")
# dog.bark 
#  Should print: 

# woof woof
# My name is Clifford
# Create a new instance object using your Dog class to make sure everything is working. 

# Inheritance
# Inheritance is used to indicate that a class will get features from another class ( A.K.A. a parent class.)

# - Parent class is inherited from
# - Child class is inheriting

# Remember: A class can only inherit from one parent at a time! 

# Corgi class
# Create a Corgi class that inherits from your Dog class. 

# 1. change the bark method so that in addition to printing "woof woof" and your dog's name, it prints "I am the queen's favourite dog. (Hint: Remember to keep your code DRY by using the super keyword)

# E.g.

# corgi = Corgi.new("Waffles")
# corgi.bark 
# Should print:

# woof woof
# My name is Waffles
# I am the queen's favorite dog
# Lastly, create a class variable that holds a list of the breeds of the Corgi class. 

# E.g. Corgi.breeds should return ["Pembroke Welsh Corgi", "Cardigan Welsh Corgi"]. 

# Note we are able to get the breeds of the Corgi class without creating an instance object! Also, we should not be able to access breeds from the Dog class, e.g. Dog.breeds should return an error. 
class Animal
	
  def initialize(name, num_legs)
    @name = name
    @num_legs = num_legs
  end
	
end

class Dog < Animal
  
    def initialize(name)
      super name, 4
    end
  
  def bark
    puts "woof woof"
    puts "My name is #{@name}"
  end
  
end

class Corgi < Dog
  @@breeds =  ["Pembroke Welsh Corgi", "Cardigan Welsh Corgi"]
  def initialize(name)
    super name
  end
  def bark
    puts "woof woof"
    puts "My name is #{@name}"
    puts "I am the queen's favorite dog"
  end
  def self.breeds
    @@breeds
  end
end


dog = Dog.new("Clifford")
dog.bark
puts

corgi1 = Corgi.new("Waffles")
corgi1.bark
puts Corgi.breeds

