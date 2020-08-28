class Vehicle
	def initialize(make, model)
		@make = make
		@model = model
		@liters = 0
	end
	
	def refuel(liters)	
		puts "max fuel is #{@max_fuel}"
		if (@liters + liters) < @max_fuel
			@liters += liters
			puts "filling #{liters} liters"
		else
			puts "too much fuel"
		end
	end
	
	def fuel_level
		puts "fuel level is #{@liters} liters"
	end
end

class Car < Vehicle
	def initialize(make, model)
		@max_fuel = 50
		super make, model
	end
	
	def wind_up_windows
		puts "winding up the windows"
	end
end

class Motorbike < Vehicle
		def initialize(make, model)
			@max_fuel = 15
		super make, model
	end
	
	def wheelie
		puts "Whooooooo"
	end
end

civic = Car.new("Honda", "Civic")
low_rider = Motorbike.new("Harley Davidson", "Low Rider")
low_rider.wheelie
civic.fuel_level
civic.refuel(30)
civic.fuel_level
civic.refuel(30)
low_rider.fuel_level
low_rider.refuel(30)
low_rider.fuel_level
low_rider.refuel(30)
