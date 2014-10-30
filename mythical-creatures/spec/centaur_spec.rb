require_relative '../centaur'

describe Centaur do

  before do
    @centaur = Centaur.new("George","Palomino")
  end

  it "has a name" do
    expect(@centaur.name).to eq("George")
  end

  it "has a breed" do
    expect(@centaur.breed).to eq("Palomino")
  end

  it "has excellent bow skills" do
    expect(@centaur.shoot).to eq("Twang!!!")
  end

  it "makes a horse sound when it runs" do
    expect(@centaur.run).to eq("Clop clop clop clop!!!")
  end

  it "is not cranky when first created" do
    expect(@centaur.cranky?).to be_falsey
  end

  it "is standing up when first created" do
    expect(@centaur.standing?).to be
  end

  it "is cranky after running or shooting three times" do
    expect(@centaur.cranky?).to be_falsey
    @centaur.shoot
    @centaur.run
    @centaur.shoot
    expect(@centaur.cranky?).to be
  end

  it "will not shoot a bow when cranky" do
    3.times { @centaur.shoot }
    expect(@centaur.shoot).to eq("NO!")
  end

  it "will not run when cranky" do
    3.times { @centaur.run }
    expect(@centaur.run).to eq("NO!")
  end

  it "will not sleep when standing" do
    expect(@centaur.sleep).to eq("NO!")
  end

  it "can lay down" do
    expect(@centaur).to respond_to(:lay_down)
  end

  it "is not standing when laying down" do
    @centaur.lay_down
    expect(@centaur.standing?).to be_falsey
  end

  it "can sleep when laying down" do
    @centaur.lay_down
    expect(@centaur.sleep).not_to eq("NO!")
  end

  it "will not shoot a bow when laying down" do
    @centaur.lay_down
    expect(@centaur.shoot).to eq("NO!")
  end

  it "will not run when laying down" do
    @centaur.lay_down
    expect(@centaur.shoot).to eq("NO!")
  end

  it "can stand up" do
    @centaur.lay_down
    @centaur.stand_up
    expect(@centaur.standing?).to be
  end

  it "is no longer cranky after sleeping" do
    @centaur.shoot
    @centaur.run
    @centaur.shoot

    expect(@centaur.cranky?).to be

    @centaur.lay_down
    @centaur.sleep

    expect(@centaur.cranky?).not_to be

    @centaur.stand_up

    expect(@centaur.shoot).to eq("Twang!!!")
    expect(@centaur.run).to eq("Clop clop clop clop!!!")
  end


end
