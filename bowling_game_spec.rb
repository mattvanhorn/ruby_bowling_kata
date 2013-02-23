require "rubygems"
require "rspec"
require_relative './bowling_game'

describe BowlingGame do
  subject(:game){ BowlingGame.new }
  it "scores zero for a game with no pins knocked down" do
    20.times do
      game.roll(0)
    end
    game.score.should == 0
  end

  it "scores 20 for a game with 1 pin knocked down on each roll" do
    20.times do
      game.roll(1)
    end
    game.score.should == 20
  end
end
