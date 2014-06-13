# ### `CarLot`
# * has a name
# * may have one or more cars
# * can retrieve the "lot value" (total price of all cars on the lot)
# * can retrieve a list of all cars matching a certain make, model, or year
require_relative 'car'
require_relative 'damage'
require_relative 'used_car'

class CarLot

  def initialize(name, cars: nil, used_cars: nil)
    @name = name

  end
end
