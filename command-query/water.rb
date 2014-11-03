class Water
  attr_accessor :temperature

  def initialize
    self.temperature = 295
  end

  def heat
    self.temperature += 1
  end

end
