class Adult
  attr_accessor :sober, :drinks

  def initialize
    self.drinks = 0
    self.sober = true
  end

  def consume_an_alcoholic_beverage
    self.drinks += 1
  end

  def sober?
    self.sober = false if drinks > 2
    sober
  end


end
