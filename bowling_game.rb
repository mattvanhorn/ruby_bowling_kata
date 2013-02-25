class BowlingGame
  NUMBER_OF_FRAMES = 10
  NUMBER_OF_PINS = 10

  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    NUMBER_OF_FRAMES.times do
      @score += score_frame
    end
    @score
  end

  private

    def score_frame
      score_strike || score_spare || score_normal
    end

    def is_strike?
      next_roll == NUMBER_OF_PINS
    end

    def is_spare?
      next_two_rolls == NUMBER_OF_PINS
    end

    def score_strike
      is_strike? && (score_roll + next_two_rolls)
    end

    def score_spare
      is_spare? && (score_normal + next_roll)
    end

    def score_normal
      score_roll + score_roll
    end

    def score_roll
      @rolls.shift
    end

    def next_roll
      @rolls[0]
    end

    def next_two_rolls
      @rolls[0..1].reduce(:+)
    end

end
