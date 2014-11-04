class Clearance
  attr_accessor :item
  def initialize
    @list = []
  end

  def <<(item)
    @list << item
  end

  def best_deal
    @list.min_by { |item| item.price - item.discount}
  end

end
