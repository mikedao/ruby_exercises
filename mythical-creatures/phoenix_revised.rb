class Phoenix
  attr_reader :name, :age, :lives

  def initialize(name)
    @name = name
    @age = 0
    @lives = 1
    @alive = true
  end

  def adult?
    @age > 300
  end

  def infant?
    !adult?
  end

  def cakeday!
    @age += 1
  end

  def revive!
    unless lives > 10
      @lives += 1
      @alive = true
    end
  end

  def burn!
    @alive = false
  end

  def alive?
    @alive
  end

  def dead?
    !alive?
  end

  def happy_ending
    @lives -= 10
  end
end

class Fairy

  def magic_kiss(phoenix)
    phoenix.happy_ending
  end
end
