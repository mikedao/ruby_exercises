class Dog
  attr_accessor :hungry

  def initialize
    self.hungry = true
  end

  def eat
    self.hungry = false
  end

  def hungry?
    hungry
  end
  
end
