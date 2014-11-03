class Teenager
  attr_accessor :drunk

  def initialize
    self.drunk = false
  end

  def consume_an_alcoholic_beverage
    self.drunk = true
  end

  def drunk?
    drunk
  end

end
