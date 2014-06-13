# UsedCar
# !has the same attributes as a new car
# !has a mileage
# !may have one or more damages
# !(scuffed paint, missing hubcaps, etc.)
# !has a value (same calculation as a new car
# !plus repair cost of all current damages subtracted)
# !all used cars have a constant mileage depreciation
# !of 1% per 10,000 miles (0.0001% per mile)

require_relative 'car'
require_relative 'damage'


class UsedCar < Car

  attr_reader :mileage, :damages
  attr_accessor :total_damage, :current_value

# initialize still needs to change to accomodate
  def initialize(make, model, make_year, origin_price, mileage = 0, damages: nil)
    @mileage = mileage
    @damages = damages
    super(make, model, make_year, origin_price)
  end

  def total_damage
    total_damage = 0
    if damages != nil
    damages.each { |damage| total_damage += damage.repair_cost }
    end
    total_damage
  end

  def mileage_deprec
    @origin_price * (@mileage * 0.000001)
  end

  def current_value
      (super - mileage_deprec - total_damage).round
  end


end
