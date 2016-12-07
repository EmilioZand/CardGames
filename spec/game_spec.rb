require 'spec_helper'

describe Game do
  describe "#initialize" do
    it "should create a new game with a new deck" do
      game = Game.new
      game.deck.cards.length.should eq(52)
    end
  end

  describe "#add_player" do
    it "should add a new player to the game" do
      game = Game.new
      game.players.length.should eq(0)
      game.add_player('Bob', 1000)
      game.players.length.should eq(1)
      game.players.first.name.should eq('Bob')
    end
  end

  describe "#deal" do
    it "should give each player a hand of cards" do
      game = Game.new
      game.add_player('Player 1', 100)
      #HAND_SIZE is set to 5 by default
      expect{game.deal}.to change{game.players.first.hand.length}.from(0).to(5)
    end
  end

  describe "#shuffle" do
    it "should clear the players hands" do
      game = Game.new
      game.add_player('Player 1', 100)
      game.deal
      expect{game.shuffle}.to change{game.players.first.hand.length}.from(5).to(0)
    end
  end
end
