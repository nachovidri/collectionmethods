
class Home
  attr_accessor(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Pepe's place", "Madrid", 9, 60),
  Home.new("Nacho's place", "Barcelona", 4, 50),
  Home.new("Juan's place", "London", 2, 43),
  Home.new("Lolo's place", "Berlin", 5, 41),
  Home.new("Ray's place", "San Juan", 6, 50)
]

# homes.each do |hm|
# 	puts "#{hm.name} in #{hm.city} is ¢#{hm.price} per night and has capacity for #{hm.capacity}"
# end


# puts "Sort by? 1: price  2: capacity"
# type_of_sort = gets.chomp
# if type_of_sort == "1"
#   homes_price_order = homes.sort do |hm1, hm2|
#     hm1.price <=> hm2.price
#   end
#   homes_price_order.each {|hm| puts hm.price}
# elsif type_of_sort == "2"
#   homes_capacity_order = homes.sort do |hm1, hm2|
#     hm1.capacity <=> hm2.price
#   end
#   homes_capacity_order.each {|hm| puts hm.capacity}
# else
#   puts "Wrong input, run the program again"
# end
    
# puts "Type the city you are interested in"
# city_interested = gets.chomp

# homes_interested = homes.select do |hm|
#   hm.city == city_interested
# end

# homes_interested.each do |hm|
#   puts "#{hm.name} in #{hm.city} is ¢#{hm.price} per night and has capacity for #{hm.capacity}"
# end

# sum_prices_interested = homes_interested.reduce(0.0) { |sum, hm| sum + hm.price }

# average_price_interested = sum_prices_interested/homes_interested.length

# puts "The average price is #{average_price_interested}"

puts "Type the price you want to pay"
price_interested = gets.to_i

homes_interested_price = homes.find do |hm|
  hm.price == price_interested
end

puts homes_interested_price.name




