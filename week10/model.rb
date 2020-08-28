def password_validation (p)
	tries = 3
	until tries == 0
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
