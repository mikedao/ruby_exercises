class Teeth
  attr_accessor :clean

  def initialize
    self.clean = false
  end

  def clean?
    clean
  end

  def brush
    self.clean = true
  end
  
end
