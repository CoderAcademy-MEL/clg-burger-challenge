require_relative 'burger'
require_relative 'burger_database'
require_relative 'order'

class BurgerBuilder

    def self.select_bun
        buns = BurgerDatabase.get_bun_types
        get_choice("Please select a bun type", buns)
    end

    def self.select_patty
        pattys = BurgerDatabase.get_patty_types
        get_choice("Please select a patty type", pattys)
    end

    def self.select_fillings
        fillings = BurgerDatabase.get_filling_types
        get_choices("Please select your fillings", fillings)
    end

    def self.select_sauce
        sauces = BurgerDatabase.get_sauces
        get_choice("Please select your sauce", sauces)
    end

    def self.get_choice(instruction, choices)
        input = 0
        while (!(input.between? 1, choices.length))
            system 'clear'
            puts instruction
            choices.each_with_index do |c, index|
                puts "#{index + 1}) #{c}"
            end
            input = gets.chomp.to_i
        end
        input - 1
    end

    def self.get_choices(instruction, choices)
        selections = []
        add_more = true
        while add_more
            system 'clear'
            input = 0
            puts instruction
            choices.each_with_index do |c, index|
                puts "#{index + 1}) #{c}"
            end
            puts "or type x to stop"
            input = gets.chomp
            if input == 'x'
                add_more = false
            elsif input.to_i.between?(1, choices.length)
                selections << input.to_i - 1
            end
        end
        selections
    end

end

def self.build
    bun = BurgerBuilder.select_bun
    patty = BurgerBuilder.select_patty
    fillings = BurgerBuilder.select_fillings
    sauce = BurgerBuilder.select_sauce

    # Add code which can get the name of the bun, patty, sauce and fillings.
    # Create a new instance of burger and return it.

    # Write code which allows the user to select a cheese.
    # Write code which can get the name of the cheese.

end

def self.new_order(order)
    # Write code which presents the build menu to the user until they wish to stop.
    # Each burger should be added to an order (1 order may contain many burgers).
    # Finally, return the order.
end