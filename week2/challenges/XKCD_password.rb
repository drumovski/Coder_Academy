# This terminal app should generate a nice, memorable password 
# based on the logic shown in this webcomic: https://xkcd.com/936/

# So, our app must combine four random words to create passwords.

# The user should be able to do this forever until they are 
# happy with the generated password.
# The password should contain capital letters on every word 
# and a random number at the end of the password.
# Here’s some arrays to start you off:

def generate_random_words(how_many_words, words)
	password =""
	each_word = ""
	how_many_words.times do
		each word = words[rand(words.length)]
		puts each_word
		password << each_word
	end
	return password << rand(99).to_s
end


number_of_words = 4	
words = ["leadership","general", "live","vat","start","cope","tray","refuse","tax","displace","correct", "horse", "battery", "staple", "turtle", "blue", "noisy", "hungry", "extra", "speedy", "coding", "website", "banana", "seal", "zebra", "flag"]
puts generate_random_words(number_of_words, words)

