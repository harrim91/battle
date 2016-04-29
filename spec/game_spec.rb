require 'game'

describe Game do
  subject(:game) {described_class.new}

  before { game.add_player "player_1", "p1_img" ; game.add_player "player_2", "p2_img" }

  describe '#add_player' do
    it 'errors if more than two players are added' do
      expect{game.add_player "player_3", "p3_img"}.to raise_error Game::TOO_MANY_PLAYERS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(subject.defending_player).to receive(:receive_damage)
      subject.attack(subject.defending_player)
    end
  end

  describe '#stab' do
    it 'damages the player' do
      expect(subject.defending_player).to receive(:receive_damage)
      subject.stab(subject.defending_player)
    end
  end

  describe '#pinch' do
    it 'damages the player' do
      expect(subject.defending_player).to receive(:receive_damage)
      subject.pinch(subject.defending_player)
    end
  end

  describe '#game_over?' do
    before{allow(subject.defending_player).to receive(:alive?)}
    before{allow(subject.active_player).to receive(:alive?)}

    it 'by default it returns false' do
      allow(subject.defending_player).to receive(:alive?).and_return true
      allow(subject.active_player).to receive(:alive?).and_return true
      expect(subject.game_over?).to eq false
    end

    it 'returns true if player 1 is dead' do
      allow(subject.active_player).to receive(:alive?).and_return false
      expect(subject.game_over?).to eq true
    end

    it 'returns true if player 2 is dead' do
      allow(subject.defending_player).to receive(:alive?).and_return false
      expect(subject.game_over?).to eq true
    end

  end
end
