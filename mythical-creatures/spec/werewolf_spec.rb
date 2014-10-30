require_relative '../werewolf'

describe Werewolf do

  context "Basic Test" do
    before do
      @werewolf = Werewolf.new("David")
    end

    it "has a name" do
      expect(@werewolf.name).to eq("David")
    end

  end

  context "Test passing name and location" do
    before do
      @werewolf = Werewolf.new("David", "London")
    end

    it "has a location" do
      expect(@werewolf.location).to eq("London")
    end

    it "is human by default" do
      expect(@werewolf.human?).to be
    end

    it "can change" do
      expect(@werewolf).to respond_to(:change!)
    end

    it "when starting as a human, changing means no longer human" do
      @werewolf.change!
      expect(@werewolf.human?).to be_falsey
    end

    it "when starting as a human, changing means its now a werewolf" do
      @werewolf.change!
      expect(@werewolf.werewolf?).to be
    end

    it "when starting as a ww, changing twice turns it into a ww again" do
      @werewolf.change!
      expect(@werewolf.werewolf?).to be
      @werewolf.change!
      @werewolf.change!
      expect(@werewolf.werewolf?).to be
    end


  end

end
