class BowlingGame
  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    while @rolls.any? do
      roll1 = @rolls.shift
      roll2 = @rolls.shift
      frame_score = roll1 + roll2
      if frame_score == 10
        @score += (10 + @rolls.first)
      else
        @score += frame_score
      end
    end
    @score
  end
end
