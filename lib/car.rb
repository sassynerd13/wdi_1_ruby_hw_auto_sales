# Car
# !has a make, model, and year of manufacture
# !has an MSRP (original retail price)
# !has a depreciation rate
# !(how much the value decreases each year)
# !has a value (MSRP modified by the depreciation rate
# !found taking the year of manufacture into account)
# has a manager markup
# has a price (value modified by the manager markup)
require 'date'

class Car
  attr_reader :make, :model, :make_year, :origin_price

#origin_price should be input as rounded up integer dollar val
  def initialize(make, model, make_year, origin_price)
    @make = make
    @model = model
    @make_year = make_year
    @origin_price = origin_price
    @current_value = current_value
  end

  def car_age
    now = Date.today
    now.year - make_year
  end

  def standard_deprec
    (car_age*0.05)
  end

  def current_value
    (@origin_price - standard_deprec).round
  end

end

