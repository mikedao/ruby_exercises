require_relative '../pirate'

describe Pirate do

  context "pirate, no specific job" do
    before do
        @pirate = Pirate.new("Jack")
    end

    it "has a name" do
      expect(@pirate.name).to eq("Jack")
    end

    it "scallywag by default" do
      expect(@pirate.job).to eq("Scallywag")
    end

    it "becomes cursed after enough heinous acts" do
      expect(@pirate.cursed?).to eq(false)
      @pirate.commit_heinous_act
      expect(@pirate.cursed?).to eq(false)
      @pirate.commit_heinous_act
      expect(@pirate.cursed?).to eq(false)
      @pirate.commit_heinous_act
      expect(@pirate.cursed?).to eq(true)
    end

  end



  it "has a different name" do
    pirate = Pirate.new("Blackbeard")
    expect(pirate.name).to eq("Blackbeard")
  end



  it "can be a cook" do
    pirate = Pirate.new("Jack", "cook")
    expect(pirate.job).to eq("cook")
  end



end
