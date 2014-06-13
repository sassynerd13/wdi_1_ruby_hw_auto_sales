
class Damage

  attr_accessor :repair_cost, :description

  def initialize(repair_cost, description)
    @repair_cost = repair_cost.round
    @description = description.downcase
  end
end
