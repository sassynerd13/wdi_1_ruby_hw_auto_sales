require_relative '../lib/car.rb'


junker = Car.new("AMC", "Pacer Sundowner", 1975, 3599)

puts "Without mileage, #{junker.make_year} #{junker.make} #{junker.model} is valued at $#{junker.current_value}, and has a ticket price of $#{junker.dealer_price}."
