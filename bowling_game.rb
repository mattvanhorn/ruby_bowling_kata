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
      if roll1 == 10
        # strike
        @score += (10 + @rolls[0] + @rolls[1])
      else
        roll2 = @rolls.shift
        frame_score = roll1 + roll2

        if frame_score == 10
          # spare
          @score += (10 + @rolls.first)
        else
          @score += frame_score
        end
      end
    end
    @score
  end
end
