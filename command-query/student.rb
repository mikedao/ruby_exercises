class Student
  attr_accessor :grade

  def initialize
    self.grade = 'C'
  end

  def study
    self.grade = self.grade.gsub(/[FDCB]/, 'F' => 'D', 'D' => 'C', 'C' => 'B', 'B' => 'A')
  end

  def slack_off
    self.grade = self.grade.gsub(/[DCBA]/, 'D' => 'F', 'C' => 'D', 'B' => 'C', 'A' => 'B')
  end

end
