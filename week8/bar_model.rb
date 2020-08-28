# Anycode that deals with the data must be placed in the model file
# CRUD operation :
# create data
# edit , update and delete



# mini challenge:
# create two methods

# get_drink(coke)
# get_available_drinks

class BarModel
    def initialize
        @drink_amounts = {
            beer: 10,
            martini: 10,
            coke: 10
        }
    end

    def restock(beer: 0, martini: 0, coke: 0)
        @drink_amounts[:beer] += beer if beer > 0
    end

    def get_drink(key)
        # your code here
        if @drink_amounts[key] and @drink_amounts[key] > 0
            return @drink_amounts[key] -= 1
        end
    end

    def get_available_drinks
        #your code here
        drinks = []
        @drink_amounts.each do | key, value |
            if value > 0 
                drinks.push(key)
            end
        end

        return drinks
    end

      # def read_menu(items)
    #     items.each { |item| puts item.capitalize }
    # end

end







