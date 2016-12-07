require 'spec_helper'

describe Card do
  describe "#initialize" do
    it "should take a suit and rank and initialize an object" do
      card = Card.new("A","Spades")
      card.suit.should eq("Spades")
      card.rank.should eq("A")
    end
  end

  describe "#to_s" do
    it "should print the rank and suit" do
      card = Card.new("A", "Spades")
      card.to_s.should eq("A Spades")
    end
  end
end
