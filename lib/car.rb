# Car
# has a make, model, and year of manufacture
# has an MSRP (original retail price)
# has a depreciation rate
# (how much the value decreases each year)
# has a value (MSRP modified by the depreciation rate
# found taking the year of manufacture into account)
# has a manager markup
# has a price (value modified by the manager markup)
require 'date'

class Car
  attr_reader :make, :model, :make_year, :origin_price

  def initialize(make, model, make_year, origin_price)
    @make = make
    @model = model
    @make_year = make_year
    @origin_price = origin_price
  end

  def car_age
    now = Date.today
    now.year - make_year
  end

  def standard_deprec
    (age*0.05)
  end

end

