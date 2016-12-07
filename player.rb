class Player
  attr_accessor :name, :stack, :hand

  def initialize(name, buy_in)
    @name = name
    @stack = buy_in
    @hand = []
  end
end
