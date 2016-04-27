class Player

  def initialize(name)
    @name = name
  end

  def name
    @name.dup
  end

end