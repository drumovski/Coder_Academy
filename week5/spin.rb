# Spin words
# Difficulty: medium

# Write a function that takes in a string of one or more words, 
# and returns the same string, but with all five or more letter words 
# reversed. 

# Strings passed in will consist of only letters and spaces. 
# Spaces will be included only when more than one word is present.

# Examples:
# spin_words( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spin_words( "This is a test") => returns "This is a test" 
# spin_words( "This is another test" )=> returns "This is rehtona test"

# Tests provided use rspec

def spin_words (words)
    new_string = ""
    array_of_words = words.split
    array_of_words.map do |i|
        if i.length > 4
            i.reverse!
        end
        (new_string << "#{i} ")
    end
    puts new_string.strip!
    return new_string
end

# describe "should reverse words in the input string that are at least 5 characters long" do
#     it "should not reverse any words if none are 5 characters or longer" do
    #     expect(spin_words("This is a bad test with smol wrds")).to eq("This is a bad test with smol wrds")
    # end
    # it "should reverse words if at least 5 characters" do
spin_words("This sentence has some words that are longer")
spin_words("This ecnetnes has some sdrow that are regnol")
    # end
# end
