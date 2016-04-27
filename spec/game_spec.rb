require 'game'

describe Game do
  let(:player_1){ double(:player) }
  let(:player_2){ double(:player) }
  subject(:game){ described_class.new player_1, player_2 }

  describe "#initialize" do
    subject(:game_class) { described_class }
    it "takes two arguments" do
      expect(game_class.new(player_1, player_2)).to be_a described_class
    end
    it "has mandatory arguments" do
      expect{game_class.new}.to raise_error(ArgumentError)
    end
  end

  describe "#player_1" do
    it "returns player_1" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "returns player_2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it "damages the player" do
      expect(player_2).to receive(:take_damage)
      game.attack(player_2)
    end
  end

end