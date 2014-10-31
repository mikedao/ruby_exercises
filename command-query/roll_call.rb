class RollCall
  attr_reader :names

  def initialize
    @names = []
    @sorted = []
  end

  def <<(name)
    @names <<name
  end

  def longest_name
    @names.sort{|x, y| y.length <=> x.length}[0]
  end

end

# roll_call = RollCall.new
# roll_call << "Ann"
# roll_call << "Alexandra"
# roll_call << "Roger"
#
# puts roll_call.longest_name
