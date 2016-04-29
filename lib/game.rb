class Game

  TOO_MANY_PLAYERS = "TOO MANY PLAYERS"

  def self.create
    @game = Game.new
  end

  def self.last_instance
    @game
  end

  def initialize
    @players = []
    @characters = { "cloud" => "/images/cloud_icon.png", "lulu" => "/images/lulu_icon.png", "sephiroth" => "/images/sephiroth_icon.png", "vivi" => "/images/vivi_icon.png" }
  end

  attr_reader :characters

  def add_player player_name, character, player_class=Player
    fail TOO_MANY_PLAYERS if @players.size == 2
    @players << player_class.new(player_name, @characters[character])
    @active_player = @players.first if @players.size == 1
  end

  def attack(player)
    player.receive_damage
  end

  def pinch(player)
    player.receive_damage(5)
  end

  def stab(player)
    player.receive_damage(30)
  end

  def active_player
    @active_player
  end

  def defending_player
    non_active_player
  end

  def switch_turn
    @active_player = non_active_player
  end

  def game_over?
    ! defending_player.alive? || ! active_player.alive?
  end

  private
  def non_active_player
    @active_player == @players.first ? @players.last : @players.first
  end

end
