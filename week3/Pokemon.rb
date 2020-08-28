class Pokemon
	def initialize(name, speak, gender = ["male", "female"])   
        @speak = speak
		@name = name
        @gender = gender.shuffle[0]
		puts "initialized Pokemon"
		puts "gender is #{@gender}"
    end
    
    def speak
        return "#{@speak}"
    end

    def run_away
        return "#{@name} ran away"
    end
    
	def attack
        print "#{@name} performed #{@moves.shuffle[0]} "
	end
	
    def display_gender
        return "#{@name} is #{@gender}"
    end
end

class Pikachu < Pokemon
    def initialize(name, speak) 
        super name, speak
        @moves = ["Quick Attack", "Lightning Bolt", "Flash", "Double Team"]
        puts "My name is #{@name} & I am a Pikachu..."
    end
end

#Your Pokemon/ Animal Below
class Squirtle < Pokemon
    def initialize(name, speak)
        super name, speak
    end
	
end

pikaFoo = Pikachu.new("PikaFoo", "Pika! Pika!")
puts pikaFoo.speak
puts pikaFoo.attack



