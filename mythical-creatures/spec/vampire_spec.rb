require_relative '../vampire'

describe Vampire do

  it "has a name" do
    vampire = Vampire.new("Dracula")
    expect(vampire.name).to eq("Dracula")
  end

  it "is named something else" do
    vampire = Vampire.new("Vladimir")
    expect(vampire.name).to eq("Vladimir")
  end

  it "has a pet bat by default" do
    vampire = Vampire.new("Ruthven")
    expect(vampire.pet).to eq("bat")
  end

  it "can have other pets" do
    vampire = Vampire.new("Varney", "fox")
    expect(vampire.pet).to eq("fox")
  end

  it "is thirsty by default" do
    vampire = Vampire.new("Count von Count")
    expect(vampire.thirsty?).to eq(true)
  end

  it "is not thirsty after drinking" do
    vampire = Vampire.new("Elizabeth Bathory")
    vampire.drink
    expect(vampire.thirsty?).to eq(false)
  end

end
