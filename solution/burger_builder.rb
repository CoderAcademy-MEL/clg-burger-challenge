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

    def self.select_cheese
        cheeses = BurgerDatabase.get_cheese_types
        get_choice("Please select your cheese", cheeses)
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



def self.build
    bun = BurgerBuilder.select_bun
    patty = BurgerBuilder.select_patty
    fillings = BurgerBuilder.select_fillings
    sauce = BurgerBuilder.select_sauce
    cheese = BurgerBuilder.select_cheese

    bun_name = get_bun_name(bun)
    patty_name = get_patty_name(patty)
    cheese_name = get_cheese_name(cheese)
    sauce_name = get_sauce_name(sauce)
    filling_names = get_filling_names(fillings)

    burger = Burger.new(bun_name,patty_name,filling_names,sauce_name,cheese_name)

end

def self.new_order(order)
    # Write code which presents the build menu to the user until they wish to stop.
    # Each burger should be added to an order (1 order may contain many burgers).
    # Finally, return the order.

    add_more = true
    while add_more
        puts "please make your selections"
        order.add_burger(build)
        puts "would you like to order another? y|n"
        input = gets.chomp!
            if input == 'n'
                add_more = false
            end
    end

end

def self.get_bun_name(index)
    BurgerDatabase.get_bun_types[index]
end

def self.get_patty_name(index)
    BurgerDatabase.get_patty_types[index]
end

def self.get_cheese_name(index)
    BurgerDatabase.get_cheese_types[index]
end

def self.get_sauce_name(index)
    BurgerDatabase.get_sauces[index]
end

def self.get_filling_names(fillings)
    filling_names = []
    fillings.each do |f|
        filling_names << BurgerDatabase.get_filling_types[f]
    end
    filling_names
end

end