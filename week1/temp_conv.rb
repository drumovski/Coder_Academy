#If you're converting from Fahrenheit to Celsius, the conversion equation is (F - 32) / 1.8 = C. 
#If you're converting from Celsius to Fahrenheit, the conversion equation is (C * 1.8) + 32 = F.
puts
puts "This program converts Farenheit to Celcius and vice versa."

#calculations

def to_farenheit (t)
	((t * 1.8) + 32).round(2)
end

def to_celcius (t)
	((t -32) / 1.8).round(2)
end

#input values and validate

print "Enter the temperature to convert: "
temp = gets.chomp
until temp.to_i != 0 or temp == "0"
	puts "#{temp} is not a valid input"
	print  "please enter temperature as a number: "
	temp = gets.chomp
end
temp = temp.to_f

print "What would you like to convert to? (f for Farenheit, c for Celcius): "
convert = gets.chomp

until convert == "f" or convert == "c"
	puts "#{convert} is not a valid input"
	print  "please enter f for Farenheit, c for Celcius): "
	convert = gets.chomp
end

#Output

if convert == "f"
	puts "#{temp} degrees celcius is #{to_farenheit(temp)} farenheit"
elsif convert == "c" 
	puts "#{temp} degrees farenheit is #{to_celcius(temp)} celcius"
else
	puts "An unexpected error has occured. Was expecting #{convert} to be f or c"
end
puts
	
		

