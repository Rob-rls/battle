require "player"

describe Player do
  subject(:player) {Player.new("rob")}

  it "returns name" do
    expect(player.name).to eq "rob"
  end

  it "displays hitpoints" do
    expect(player.hp).to eq 60
  end

  describe 'is hit by an attack' do

    it "reduces it's HP" do
      expect{player.hit}.to change{player.hp}.by(-10)
    end

  end

end
