class Appointments
  attr_accessor :appointments

  def initialize
    self.appointments = []
  end

  def at(time)
    self.appointments << time
  end

  def earliest
    self.appointments.sort { |a,b| a <=> b }.first
  end

end
