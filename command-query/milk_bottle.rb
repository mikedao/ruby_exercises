class MilkBottle
  attr_accessor :full

  def initialize
    self.full = true
  end

  def full?
    full
  end

  def spill
    self.full = false
  end
  

end
