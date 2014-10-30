require_relative '../dragon'

describe Dragon do

  context "first dragon" do
    before do
      @dragon = Dragon.new("Ramoth", :gold, "Lessa")
    end

    it "has a name" do
      expect(@dragon.name).to eq("Ramoth")
    end

    it "has a rider" do
      expect(@dragon.rider).to eq("Lessa")
    end

    it "has a color" do
      expect(@dragon.color).to eq(:gold)
    end

  end

  context "with another dragon" do

    before do
      @dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    end

    it "different dragon has a name" do
      expect(@dragon.name).to eq("Mnementh")
    end

    it "different dragon has a rider" do
      expect(@dragon.rider).to eq("F'lar")
    end

    it "different dragon has a color" do
      expect(@dragon.color).to eq(:bronze)
    end

  end

  context "hungry dragon tests" do

    before do
      @dragon = Dragon.new("Canth", :brown, "F'nor")
    end

    it "dragons are born hungry" do
      expect(@dragon.hungry?).to eq(true)
    end

    it "dragons eat a lot" do
      expect(@dragon.hungry?).to eq(true)
      @dragon.eat
      expect(@dragon.hungry?).to eq(true)
      @dragon.eat
      expect(@dragon.hungry?).to eq(true)
      @dragon.eat
      expect(@dragon.hungry?).to eq(false)
    end
  end


end
