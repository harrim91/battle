require 'player'

describe Player do

  let(:name){"Emmett"}
  subject(:player){described_class.new(name)}

  describe "#name" do
    it "should returns the player's name" do
      expect(subject.name).to eq name
    end
  end

  describe "#take_damage" do
    it "should reduce the players hp" do
      expect{ $player_2.take_damage }.to change{ $player_2.hp }.by(-Player::DEFAULT_ATTACK_DAMAGE)
    end
  end

end