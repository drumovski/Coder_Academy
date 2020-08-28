# Implement a simple banking app

# Write a program to implement a simple bank account. It should have the following features, which you should build one at a time.

# 1. The initial balance should be 0. Show this on screen when the app runs. E.g:

# Your balance is $0
# 2. Use puts to display a nice welcome message. E.g:

# Welcome to the banking app
# Your balance is $0
# 3. Let the user determine the output. Ask them what they would like to do. If they type balance and hit return, show them their balance! Currently the only option is balance. E.g:

# Welcome to the banking app
# What would you like to do? (options: balance)
# *user types balance*
# Your balance is $0
# 4. If the user types anything other than balance, say “Invalid selection!”

# Welcome to the banking app
# What would you like to do? (options: balance)
# *user types kanye*
# Invalid selection!
# Advanced challenges

# If you complete all of the other features and want more of a challenge, try the following.

# 1. Ask the user for a password before proceeding (it's ok to hardcode the password for now).

# 2. Add ‘deposit’ as an option. If they select it, ask ‘how much would you like to deposit?’. Update the balance and show it back to the user.

# 3. Wrap the program in a loop so the user can view balance and then deposit over and over.

# 4. The screen’s looking pretty ugly, figure out how to clear the screen between loops.

# 5. Implement a withdraw feature. Make sure they can’t withdraw more than their total balance.
# Write a program to implement a simple bank account. 

def password_validation (p)
	tries = 3
	valid = false
	until valid or tries == 0
		print "Please enter password: "
		entered_password = gets.chomp
		tries -= 1
		if entered_password == p
			system("clear")
			return true
		else
			if tries == 1
				puts "You have entered a wrong password. Last try! (hint it's 12345)"
			else
				puts "You have entered a wrong password. #{tries} tries left"
			end
		end	
	end
	puts "You have entered too many incorrect passwords"
	puts "Program terminated"
	return false
end

def validate_option (option)
	until option == "balance" or option == "deposit" or option == "withdraw" or option == "quit"
		system("clear")
		puts "#{option} is not a valid input"
		print  "(please enter either balance, deposit, withdraw or quit): "
		option = gets.chomp
	end
	return option
end

def deposit (balance)
	print "please enter amount to deposit $"
	amount = gets.chomp.to_f
	system("clear")
	puts "deposited $#{amount}"
	return amount + balance
end
	
def withdraw (balance)
	overdrawn = true
	while overdrawn
		print "please enter amount to withdraw $"
		amount = gets.chomp.to_f
		if balance - amount < 0
			system("clear")
			puts "Not enough funds! Your balance is $#{balance.round(2)}"
		else
			system("clear")
			puts "withdrew $#{amount}"
			balance = balance - amount
			return balance
			overdrawn = false
		end
	end
end
	

	
def banking_app(balance)
	option = "initialise"
	while option != "quit"
    	puts "Your balance is currently $#{balance.round(2)}"
		print "What would you like to do? (balance, deposit, withdraw or quit): "
		option = gets.chomp
		option = validate_option(option)
		if option == "deposit"
			balance = deposit(balance)
		elsif option == "withdraw"
			balance = withdraw(balance)
		elsif option == "balance"
			system("clear")
		end					
	end
end
	
balance = 0.0
password = "12345"
system("clear")
puts "Welcome to Ruby banking"	
if password_validation(password)
	banking_app(balance)
	puts "Thank you for banking with Ruby. Please come again."
end

