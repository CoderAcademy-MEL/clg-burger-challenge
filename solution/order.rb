
# The Order class has the following attributes:
# burgers: an array of burgers, which is initialised (empty) in the constructor.
# provide read access to the burgers attribute.
# provide a method called add_burger which takes a burger as an argument and adds it to the burgers array.

class Order
    attr_accessor :burgers

    def initialize
        @burgers = []
    end

    def add_burger(burger)
        @burgers << burger
    end

    def calulate_total_with_gst
        total = BurgerDatabase.get_burger_base_price * burgers.length

        burgers.each do |b|
            f_totals = BurgerDatabase.get_ingrediant_price * b.fillings.length
            total += f_totals
        end

        gst_amount = total.to_f / 11

        [total, gst_amount]
    end


end