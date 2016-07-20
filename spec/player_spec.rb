require "player"

describe Player do
  subject(:thor) {Player.new("Thor")}
  subject(:loki) {Player.new("Loki")}

  it "returns name" do
    expect(thor.name).to eq "Thor"
  end

  it "displays hitpoints" do
    expect(thor.hp).to eq described_class::DEFAULT_HP
  end

  it "reduces it's HP if hit" do
    expect{thor.receive_damage}.to change{thor.hp}.by(-10)
  end

end
