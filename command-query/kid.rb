class Kid
  attr_accessor :grams_of_sugar_eaten, :hyperactive

  def initialize
    self.grams_of_sugar_eaten = 0
    self.hyperactive = false
  end

  def eat_candy
    self.grams_of_sugar_eaten += 5
  end

  def hyperactive?
    true if grams_of_sugar_eaten > 59
  end

end
