class Werewolf
  attr_reader :name, :location

  def initialize(name,location = "London")
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human == true
  end

  def change!
    @human == true ? @human = false : @human = true
  end

  def werewolf?
    @human == false
  end

end
