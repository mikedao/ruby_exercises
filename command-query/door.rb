class Door
  attr_accessor :locked

  def initialize
    self.locked = true
  end

  def locked?
    locked
  end
  
  def unlock
    self.locked = false
  end


end
