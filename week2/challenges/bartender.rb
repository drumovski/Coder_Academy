# Original challenge text:

# You are working at a bar where you have a current backlog of drinks to make:

# 3 cocktails
# 2 waters
# and

# 6 beers
# Write a program that asks the customer for their order.

# If they order a cocktail, add one to the number of cocktails you need to make,
# If they order a water, add one to the number of waters you need to make,
# If they order a beer, add one to the number of beers you need to pour
# Print the final drinks order so you know what to make.

# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make
# Print out the total profit for the orders you have.

# REMEMBER: Solve this challenge with a case statement and extra food & drink options!

#current orders:
cocktail = 3
beer = 6
water = 2
wine = 2
pretzel = 0
burger = 1

#current prices:
cocktail_buy = 8
cocktail_sell = 22
beer_buy = 3
beer_sell = 12
water_buy = 0.15
water_sell = 6
wine_buy = 6
wine_sell = 15
pretzel_buy = 2
pretzel_sell = 5
burger_buy = 10
burger_sell = 20


def profit_calc (buy, sell, quantity)
	return (sell - buy) * quantity
end



puts "Welcome to Joe's, you can order cocktail, beer, wine, water, pretzel and burger"
puts "What do you want to order? "
order = gets.chomp

case order 
	when "cocktail"
	cocktail += 1
	puts cocktail
	when "beer"
	beer += 1
	when "wine"
	wine += 1
	when "water"
	water += 1
	when "pretzel"
	pretzel += 1
	when "burger"
	burger += 1
end





