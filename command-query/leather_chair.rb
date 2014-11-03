class LeatherChair
  attr_accessor :faded

  def initialize
    self.faded = false
  end

  def faded?
    faded
  end

  def expose_to_sunlight
    self.faded = true
  end


end
