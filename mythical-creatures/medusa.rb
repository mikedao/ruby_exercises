class Medusa
  attr_reader :statues

  def initialize(name)
    @statues = []
  end

  def name
    "Cassiopeia"
  end

  def stare(victim)
    victim.stoned
    statues << victim
  end

end

class Person
  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned == true
  end

  def stoned
    @stoned = true
  end

end
