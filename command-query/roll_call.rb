class RollCall
  attr_accessor :names

  def initialize
    self.names = []
  end

  def longest_name
    self.names.max_by { |n| n.length }
  end

  def <<(name)
    self.names << name
  end

end
