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
      if roll1 + roll2 == 10
        @score += (10 + @rolls.first)
      else
        @score += (roll1 + roll2)
      end
    end
    @score
  end
end
