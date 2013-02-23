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
end
