class Burger
    attr_accessor :bun, :patty, :sauce, :fillings, :cheese

    # Write code which adds cheese as an ingredient.
    # Provide read/write access to the attribute.
    # Include the attribute in the to_s method.
    def initialize(bun, patty, fillings, sauce, cheese)
        @bun = bun
        @patty = patty
        @fillings = fillings
        @sauce = sauce
        @cheese = cheese
    end

    def to_s
        "bun: #{@bun}, patty: #{@patty}, fillings: #{@fillings}, sauce: #{@sauce}, #{cheese}"
    end

end