class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @tired = 0
    @standing = true
  end

  def shoot
    perform_action("Twang!!!")
  end

  def run
    perform_action("Clop clop clop clop!!!")
  end

  def perform_action(message)
    if cranky? || laying?
      refuse
    else
      @tired += 1
      message
    end
  end

  def cranky?
    @tired > 2
  end

  def standing?
    @standing
  end

  def sleep
    standing? ? refuse : clear_actions
  end

  def lay_down
    @standing = false
  end

  def laying?
    !standing?
  end

  def stand_up
    @standing = true
  end

  def refuse
    "NO!"
  end

  def clear_actions
    @tired = 0
  end


end
