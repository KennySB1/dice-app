require 'dice_app'
describe DiceApp do
  it 'rolls a dice' do
    expect(subject.roll).to be_between(1, 6)
  end

  it 'can roll multiple dice at the same time' do
    expect(subject.roll(7)).to be > 6
  end

  it 'saves the value of multiple rolls' do
    subject.roll
    expect(subject.dice.sum).to be > 0
  end

  it 'returns your current score' do
    expect(subject.current_score).to eq(0)
  end
end