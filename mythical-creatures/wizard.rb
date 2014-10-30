class Wizard

  attr_reader :name, :bearded

  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
  end

  def bearded?
    @bearded == true
  end

  def incantation(text)
    "sudo #{text}"
  end

end
