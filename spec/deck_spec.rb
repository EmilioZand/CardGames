require 'spec_helper'

describe Deck do
  describe "#initialize" do
    it "should create a deck with 52 cards" do
      Deck.new.cards.length.should eq(52)
    end
  end
end
