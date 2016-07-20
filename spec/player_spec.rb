require "player"

describe Player do
  subject(:player) {Player.new("rob")}
  it "returns name" do
    expect(player.name).to eq "rob"
  end
end
