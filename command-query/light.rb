class Light
  attr_accessor :on

  def initialize
    self.on = false
  end

  def on?
    on
  end

  def turn_on
    self.on = true
  end

end
