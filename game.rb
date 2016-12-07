require './deck'
require './player'

class Game
  TABLE_SIZE = 8
  HAND_SIZE = 5

  attr_reader :deck, :players

  def initialize
    @deck = Deck.new()
    @players = []
  end

  def add_player(name, buyin)
    @players << Player.new(name, buyin) if @players.length < TABLE_SIZE
  end

  def deal
    HAND_SIZE.times do
      @players.each do |player|
        player.hand << @deck.pop
      end
    end
  end

  def shuffle
    @players.each do |player|
      player.hand = []
    end
    @deck = Deck.new()
  end

end
