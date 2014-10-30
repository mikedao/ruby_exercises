class Pirate

attr_reader :name, :job

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @acts = 0
  end

  def cursed?
    @cursed == true
  end

  def commit_heinous_act
    @acts += 1
    @acts > 2 ? @cursed = true : @cursed = false
  end



end
