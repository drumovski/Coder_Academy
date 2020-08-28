# We've got a biiiiig challenge for the rest of today, so feel free to collaborate and bounce ideas of each other as to how you'd solve the problem. The tests have been written to cover all steps, but feel free to check your progress as you complete a section

# We will be creating 4 classes: Song, Album, Artist and BillboardTop10

# IMPORTANT: Please click the "Mark" button to run our tests periodically after finishing each of the different sections of this challenge to ensure your code is working as expected. 

# Song class
# 1. The Song class will have title, duration and genre

# 2. Create at least three instances of the Song class


# Album class
# 3. Similarly, the Album class will have a title, release_date and songs, which will be an array, that will eventually hold an album's songs

# 4. Create at least three instances of the Album class

# 5. Create an instance method, called add_song, to add song objects to the songs attribute. Then add the songs that have been created to some or all the albums

# 6. Create a method, called number_of_songs, that will count how many songs that album instance has


# Artist class
# 7. Artist class will have two attributes: name and albums, the albums attribute will be an array of album objects

# 8. The Artist class will also have an instance method, called add_album, that will allow it to add album objects to the albums attribute

# 9. Create two instances of the Artist class

# 10. Use the instance method to add some album objects to the album attribute

# 11. Create a method, called number_of_albums, that will count how many albums an artist has


# BillboardTop10 Class
# 12. Create a BillboardTop10 class that will have two attributes: year and artists

# 13. Similarly, the BillboardTop10 class will have an instance method called, add_artist, that will add the artists that featured in the top ten that year

# 14. If more than 10 artists are entered, the first one that was entered will be dropped, so the array will never be longer than 10

# 15. Use this method to add some artists to a BillboardTop10 instance

# 16. Create a method, called number_of_artists, that shows how many artists there are in a billboard year - remember this cannot exceed 10!

# Once all tests have been passed, feel free to go onwards and keep building this. Could turn it into a cool little app/website!

class Song
	def initialize(title, duration, genre)
		@title = title
		@duration = duration
		@genre = genre
		puts "Initialized song"
	end
end

class Album
	def initialize(title, release_date)
		@title = title
		@release_date = release_date
		@songs = Array.new
		@song_count = 0
		puts "Initialized Album"
	end	
	
	def number_of_songs
		if @song_count == 0
			puts "#{@title} has no songs"
		elsif @song_count == 1
			puts "#{@title} has 1 song"
		else
			puts "#{@title} has #{@song_count} songs"
		end
		return @song_count
	end

	def add_song(song_title)
		@song_count += 1
		@songs << song_title
		puts "Added song #{song_title}"
		return self
	end
end

class Artist
	def initialize(name)
		@name = name
		@albums = Array.new
		@number_of_albums = 0
		puts "Initialized Artist"
	end
	
	def add_album(album)
		@number_of_albums += 1
		@albums << album
	end
	
	def number_of_albums
		if @number_of_albums == 0
			puts "#{@name} has no albums"
		elsif @number_of_albums == 1
			puts "#{@name} has 1 album"
		else
			puts "#{@name} has #{@number_of_albums} albums"
		end
		return @number_of_albums
	end
end

class BillboardTop10
	def initialize
		@year = 0
		@artists = Array.new
		@num_of_artists = 0
		puts "Initialized Billboard Top 10"
	end
	
	def add_artist(artist)
		@num_of_artists += 1
		@artists << artist
		if @num_of_artists > 10
			@artists.pop
		end
	end
	
	def number_of_artists
		
		puts @number_of_artists
	end
end

# Create your 3 instances of the Song class here
song1 = Song.new("Another one Bites the Dust", 3.25, "Rock")
song2 = Song.new("Waste the Alphabet", 4.34, "Indie")
song3 = Song.new("Keeping Time", 3.26, "Indie Rock")
song4 = Song.new("Killer Queen", 4.47, "Rock")

#Add your Album, Artist and BillboardTop10 classes below
album1 = Album.new("Queen II", 1974)
album4 = Album.new("Day at the Races", 1978)
album2 = Album.new("Rock it", 2020)
album3 = Album.new("Angie Mcmahon", 2018)

artist1 = Artist.new("Queen")
artist2 = Artist.new("Dick Diver")
artist3 = Artist.new("Angie Mcmahon")
topten1 = BillboardTop10.new

album1.add_song(song1)
album2.add_song(song2)
album3.add_song(song3)
album1.number_of_songs
artist1.add_album(album1)
artist1.add_album(album4)
artist1.number_of_albums
topten1.add_artist(artist1)
topten1.add_artist(artist2)
topten1.add_artist(artist3)
topten1.number_of_artists
