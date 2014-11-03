class Pills
  attr_accessor :number

  def initialize
    self.number = 60
  end

  def count
    number
  end

  def pop
    self.number -= 1
  end


end
