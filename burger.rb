class Burger
    attr_accessor :bun, :patty, :sauce, :fillings

    # Write code which adds cheese as an ingredient.
    # Provide read/write access to the attribute.
    # Include the attribute in the to_s method.
    def initialize(bun, patty, fillings, sauce)
        @bun = bun
        @patty = patty
        @fillings = fillings
        @sauce = sauce
    end

    def to_s
        "bun: #{@bun}, patty: #{@patty}, fillings: #{@fillings}, sauce: #{@sauce}"
    end

end