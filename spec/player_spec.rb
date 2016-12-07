require 'spec_helper'

describe Player do
  describe "#initialize" do
    it "should create a new player with name and stack" do
      player = Player.new('Bill', 100)
      player.name.should eq("Bill")
      player.stack.should eq(100)
    end
  end
end
