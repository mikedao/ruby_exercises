class Phoenix
  attr_reader :name, :age, :lives, :revives

  def initialize(name, age=0)
    @name = name
    @age = age
    @alive = true
    @lives = 0
    @revives = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    age > 300
  end

  def infant?
    !adult?
  end

  def alive?
    @alive
  end

  def burn!
    @alive = false
  end

  def dead?
    !alive?
  end

  def revive!
    if @revives < 10
      @alive = true
      @lives += 1
      @revives += 1
    else
      "YOU ARE NOT IMMORTAL"
    end
  end

  def fairykiss
    @revives += 10
  end


end
