require_relative 'candy'

class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def count
    candies.count
  end

  def <<(candy)
    candies << candy
  end

  def contains?(type)
    candies.any? { |candy| candy.type == type }
  end

  def grab(type)
    index = candies.index { |candy| candy.type == type }
    candies.delete_at(index)
  end

  def take(number_to_take)
      if number_to_take == 1
        candies.pop
      else
        taken = []
        number_to_take.times { taken << candies.pop }
        taken
      end

  end

end
