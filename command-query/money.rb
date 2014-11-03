class Money
  attr_accessor :amount

  def initialize
    self.amount = 0
  end

  def earn(cash)
    self.amount += cash
  end

  def spend(cash)
    self.amount -= cash
  end
  
end
