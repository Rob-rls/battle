class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def hit
    @hp -= 10
  end

end
