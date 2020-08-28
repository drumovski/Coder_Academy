# contains all the methods that relating to show data to the user
# greeting
# make a selction
# read menu
# wrong answer
# good bye
# take order

# view : doesn't have much logic
# what you show to the user

class BarView
    def greeting
        puts "Hi how can I help you?"
    end

    def selection
        puts "Enter 1. to look at the menu or 2. to order a drink"
        return gets.strip.to_i
        # return user_input
    end

    def display_menu(items)
        items.each { |item| puts item.capitalize }
    end

    def wrong_answer
        puts "Sorry I don't understand , try again "
    end

    def goodbye(item)
        puts "Here is your #{item}. Thanks for coming see you later"
    end

    def order
        puts "what would you like"
        gets.chomp.downcase.to_sym
    end

end