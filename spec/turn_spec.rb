require 'pry'
require './lib/card'
require './lib/turn'

RSpec.describe Turn do
  it "exists" do
    card = Card.new("What is the capitol of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)

    expect(turn).to be_instance_of(Turn)
  end

  it "has a guess" do
    card = Card.new("What is the capitol of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)

    expect(turn.guess).to eq("Juneau")
  end

  it "has a flash card" do
    card = Card.new("What is the capitol of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)

    expect(turn.card).to eq(card)
  end

  it "can check if answer is good" do
    card = Card.new("What is the capitol of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)

    expect(turn.correct?).to be true
  end

  it "can tell you if it's right" do
    card = Card.new("What is the capitol of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    binding.pry
    expect(turn.feedback).to eq("Correct!")
  end
end
