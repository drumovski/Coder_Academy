
print "What's the temperature today? "
temp = gets.chomp.to_i

if temp < 15
	puts "It's too cold"
elsif temp >= 15 and temp <= 28
	puts "It's beautiful today"
else 
	puts "Its too hot"
end

