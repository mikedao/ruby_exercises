require_relative '../hobbit'

describe Hobbit do

  it "has a name" do
    hobbit = Hobbit.new("Bilbo")
    expect(hobbit.name).to eq("Bilbo")
  end

  it "has a different name" do
    hobbit = Hobbit.new("Peregrin")
    expect(hobbit.name).to eq("Peregrin")
  end

  it "has a disposition that is unadventurous" do
    hobbit = Hobbit.new("Peregrin")
    expect(hobbit.disposition).to eq("homebody")
  end

  it "has a disposition that is different" do
    hobbit = Hobbit.new("Frodo", "adventurous")
    expect(hobbit.disposition).to eq("adventurous")
  end

  it "grows older as it celebrates birthdays" do
    hobbit = Hobbit.new("Meriadoc")
    expect(hobbit.age).to eq(0)
    5.times do
      hobbit.celebrate_birthday
    end
    expect(hobbit.age).to eq(5)
  end

  it "comes of age at 33" do
    hobbit = Hobbit.new("Otho")
    33.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to eq(true)

    hobbit.celebrate_birthday
    expect(hobbit.adult?).to eq(true)
  end

end
