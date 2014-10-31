class Children

  def initialize
    @children = []
  end

  def eldest
    @children.sort{|x, y| y.age <=> x.age}[0]
  end

  def <<(child)
    @children << child
  end


end
