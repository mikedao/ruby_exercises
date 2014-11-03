class Children
  attr_accessor :list

  def initialize
    self.list = []
  end

  def <<(child)
    self.list << child
  end

  def eldest
    self.list.max_by { |child| child.age }
  end
end
