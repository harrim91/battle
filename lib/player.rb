class Player

  DEFAULT_HP = 100

  def initialize(name, image, hp = DEFAULT_HP)
    @image = image
    @name = name
    @hp = hp
  end

  attr_reader :name, :hp, :image

  def receive_damage(damage = 10)
    @hp -= damage
  end

  def alive?
    @hp > 0
  end
end
