require "rubygems"
require "rspec"
require_relative './bowling_game'

describe BowlingGame do
  subject(:game){ BowlingGame.new }

  def roll_many(rolls, pins)
    rolls.times do
      game.roll(pins)
    end
  end

  it "scores zero for a game with no pins knocked down" do
    roll_many 20, 0
    game.score.should == 0
  end

  it "scores 20 for a game with 1 pin knocked down on each roll" do
    roll_many 20, 1
    game.score.should == 20
  end

  it "scores a spare correctly" do
    game.roll(5)
    game.roll(5)
    game.roll(3)
    roll_many 17, 0
    game.score.should == 16
  end

  it "scores a strike correctly" do
    game.roll(10)
    game.roll(4)
    game.roll(3)
    roll_many 16, 0
    game.score.should == 24
  end

  it "scores a perfect game correctly" do
    roll_many 12, 10
    game.score.should == 300
  end

end
