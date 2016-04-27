require 'player'

describe Player do

  subject(:player_1){described_class.new("Emmett")}
  subject(:player_2){described_class.new("Michael")}

  describe "#name" do
    it "should returns the player's name" do
      expect(player_1.name).to eq "Emmett"
    end
  end

  describe "#attack" do
    it "damages the player" do
      expect(player_2).to receive(:take_damage)
      player_1.attack(player_2)
    end
  end

  describe "#take_damage" do
    it "should reduce the players hp" do
      expect{ $player_2.take_damage }.to change{ $player_2.hp }.by(-Player::DEFAULT_ATTACK_DAMAGE)
    end
  end

end