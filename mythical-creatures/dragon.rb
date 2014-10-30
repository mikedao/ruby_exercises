class Dragon

  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @food = 0
  end

  def hungry?
    @hungry == true
  end

  def eat
    @food += 1
    @food > 2 ? @hungry = false : hungry = true
  end

end
