require_relative 'product'

class Catalogue
  attr_accessor :items

  def initialize
    self.items = []
  end

  def <<(item)
    self.items << item
  end

  def cheapest
    cheapest_item = self.items.min_by { |item| item.price }
    cheapest_item.name
  end

end

catalogue = Catalogue.new
catalogue << Product.new("cupcake", 3)
catalogue << Product.new("shirt", 23)
catalogue << Product.new("button", 1)
puts catalogue.cheapest
