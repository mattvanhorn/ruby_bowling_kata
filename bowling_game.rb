class BowlingGame
  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    10.times do
      @score += score_frame
    end
    @score
  end

  def score_frame
    if is_strike?
      @rolls.shift + @rolls[0] + @rolls[1]

    elsif is_spare?
      @rolls.shift + @rolls.shift + @rolls[0]

    else
      @rolls.shift + @rolls.shift
    end
  end

  def is_strike?
    @rolls[0] == 10
  end

  def is_spare?
   !is_strike? && @rolls[0] + @rolls[1] == 10
  end

end
