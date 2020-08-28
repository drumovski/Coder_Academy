# Create Post class

# Create a class called Post to represent a blog post. It should have instance variables to store a title and body

# Add an initializer to the class

# Write a main program that creates and returns a Post object.

# Tags module

# The client now wants users to be able to add one or more tags to a Post. A tag is a single word that is related to the content of the Post.

# Create a module called Taggable in post.rb that has a constant array called TAGS. This should be an array to store the tags in and should be declared in all caps. Each tag will be a string.

# Create a method to show these tags in Taggable

# Create add and remove methods in Taggable. These will add/remove a specified tag to/from the array

# Include Taggable into your Post class, and test it by changing your main program to add 3 tags, delete one, then print out the post.

class Post
	attr_accessor :title
	attr_accessor :body
	
	def initialize(title, body="")
		@title = title
		@body = body 
	end
	
	
	def display_post
		puts @title
		puts @body
	end
end	

	def generate_post
	post1 = Post.new("Chickens are more than food")
	return post1
end





post1 = generate_post
puts post1.title

