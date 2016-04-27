class Player

  DEFAULT_HP = 100
  DEFAULT_ATTACK_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  attr_reader :hp

  def name
    @name.dup
  end

  def attack player
    player.take_damage
  end

  def take_damage
    @hp -= DEFAULT_ATTACK_DAMAGE
  end

end