require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'

flat_tire = Damage.new(250, "Flat tire from street glass")
broken_mirror = Damage.new(95, "Broke off side mirror")

junker = UsedCar.new("AMC", "Pacer Sundowner", 1975, 3599, 85000, damages: [flat_tire, broken_mirror])

puts "With #{junker.mileage} miles, #{junker.make_year} #{junker.make} #{junker.model} is valued at $#{junker.current_value}, and has a ticket price of $#{junker.dealer_price}."

