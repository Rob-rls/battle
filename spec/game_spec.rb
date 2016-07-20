require 'game'

describe Game do
  let(:subject) {described_class.new}
  let(:thor) {double(:player)}
  let(:loki) {double(:player)}

  describe '#attack' do
    it 'attacks another player' do
      expect(loki).to receive(:receive_damage)
      subject.attack(loki)
    end
  end
end
