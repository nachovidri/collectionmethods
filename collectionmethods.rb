class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end


homes = [
  Home.new("Nizar's place", "San Juan", 2, 42.0),
  Home.new("Fernando's place", "Seville", 5, 47.0),
  Home.new("Josh's place", "Pittsburgh", 3, 41.0),
  Home.new("Gonzalo's place", "Málaga", 2, 45.0),
  Home.new("Ariel's place", "San Juan", 4, 49.0)
]


# homes.each do |hm|
#   puts "#{hm.name} in #{hm.city} is ¢#{hm.price} per night"
# end

prices = homes.map do |hm|
	hm.price
end

puts prices

sum_prices = 0
average_price = 0

=begin
prices.each do |pr|
	sum_prices = sum_prices + pr 
	average_price = sum_prices / prices.length
end

puts sum_prices
puts "Average price #{average_price}"
=end

puts sum_prices = prices.reduce(0) {|sum_prices, pr| sum_prices + pr}

puts "Average price #{average_price = sum_prices / prices.length}"



#EJERCICIO FINAL
=begin
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


# homes.sort

# prices = homes.map {|hm| hm.price}

# prices.sort

# puts prices

favourite_home = gets.chomp


puts favourite_home
=end



