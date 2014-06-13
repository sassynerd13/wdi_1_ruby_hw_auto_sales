
require 'date'
require 'pry'

class Car
  attr_reader :make, :model, :make_year, :origin_price
  attr_accessor :current_value, :dealer_price

#origin_price should be input as rounded up integer dollar val
  def initialize(make, model, make_year, origin_price)
    @make = make
    @model = model
    @make_year = make_year
    @origin_price = origin_price
    @current_value = current_value
    @dealer_price = current_value + dealer_markup
  end

  def car_age
    now = Date.today
    now.year - make_year
  end

  def standard_deprec
    (car_age*0.05)
  end

  def current_value
    (origin_price - standard_deprec).round
  end


# markup arbitrarily determined here to be 8% of MSRP (origin price)
  def dealer_markup
    (origin_price*0.08).round
  end
end

