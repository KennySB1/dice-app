class DiceApp
  attr_reader :dice
  def initialize
    @dice = []
  end
  def roll(dice_num=1)
    rand = Random.new
    dice_num.times do
      @dice << rand(1..6)
    end
    return @dice.sum
  end
  def current_score
    @dice.sum
  end
end