require_relative '../medusa'

describe Medusa do

  context "basic tests" do
    before do
      @medusa = Medusa.new("Cassiopeia")
    end

    it "has a name" do
      expect(@medusa.name).to eq("Cassiopeia")
    end

    it "can stare" do
      expect(@medusa).to respond_to(:stare)
    end

    it "has statues" do
      expect(@medusa).to respond_to(:statues)
    end

    it "has no statues when first called" do
      expect(@medusa.statues).to be_empty
    end
  end

  context "medusa and a victim" do
    before do
      @medusa = Medusa.new("Cassiopeia")
      @victim = Person.new("Perseus")
    end

    it "staring at a person, gain a statue" do
      @medusa.stare(@victim)
      expect(@medusa.statues.count).to eq(1)
      expect(@medusa.statues.first.name).to eq("Perseus")
    end

    it "when staring at a person they turn to stone" do
      expect(@victim.stoned?).to be_falsey
      @medusa.stare(@victim)
      expect(@victim.stoned?).to be
    end

  end


end
