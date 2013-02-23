class BowlingGame
  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    @rolls.each do |pins|
      @score += pins
    end
    @score
  end
end
