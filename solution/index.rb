require_relative 'burger'
require_relative 'burger_builder'
require_relative 'order'

# Write code which gets an instance of Order, and then calls the burger_builder method which creates/starts a new order (BurgerBuilder.new_order(order)).
# Print the resulting order.

order = Order.new
BurgerBuilder.new_order(order)
puts order

order.burgers.each do |b|
    puts "burger..."
    puts b
end
puts "order total..."
tot =  order.calulate_total_with_gst
puts "Total: $#{tot[0].round(2)}"
puts "GST  incl: $#{tot[1].round(2)}"


# End result: an order has one or many burgers