# Bookkeeping with Hashes
# Make an array of books. Each book will be represented as a hash 
# with keys title, author, and year (that the book was published).

# Populate the array with 3 books.

# Loop through this array, printing to screen the value of each 
# member of the array. Format the output so that each book looks like this: Harry Potter by J.K. Rowling (1997)

# Sort the array of books by year. 

system("clear")

# Make an array of books.
books = Array.new
books = [{title: "Harry Potter", author: "J. K. Rowling", year: 1997},
	{title: "The Kite Runner", author: "Khaled Hosseini", year: 2018}, 
	{title: "Memoirs of a Geisha", author: "Arthur Golden", year: 2011}]

#Sort the array
books.sort_by! { |hsh| hsh[:year] }

#Loop through this array printing correctly
#eg Harry Potter by J.K. Rowling (1997)
i=0
for this_book in books do 
puts "#{this_book[:title]} by #{this_book[:author]} (#{this_book[:year]})"
	i += 1
end

