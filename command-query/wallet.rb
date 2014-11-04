class Wallet
  attr_accessor :cents, :converter, :wallet



  def initialize
    self.wallet = []
    self.cents = 0
    self.converter =  { :penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100, :zero => 0}
  end

  def <<(amount_one)
    self.wallet << amount_one
  end

  def take(amount_one, amount_two = :zero)
    self.cents -= converter[amount]
  end

  def cents
    self.wallet.map 


end
