require 'player'

describe Player do
  subject(:player1) {described_class.new(:name1)}
  subject(:player2) {described_class.new(:name2)}


  describe '#name' do
  it "returns its name when asked" do
  expect(player1.name).to eq(:name1)
  end
end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player1.hit_points).to eq described_class::SCORE
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end

  describe '#receive_damage' do
    it 'reduces tha player score' do
      expect { player1.receive_damage }.to change {player1.hit_points}.by(-10)
    end
  end
  end
end
