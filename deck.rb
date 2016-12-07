require './card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    suits = %w(Spade Heart Club Diamond)
    suits.each do |suit|
      ranks.each do |rank|
        card = Card.new(rank, suit)
        @cards << card
      end
    end
    @cards.shuffle!
  end

  def draw
    @cards.pop
  end

  def to_s
    @cards.each do |card|
      "#{card.to_s}\n"
    end
  end
end
