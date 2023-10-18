require 'pry'
require './lib/card'
require './lib/turn'

class Turn
attr_reader :guess, :card
attr_accessor :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    card.answer == guess
  end

  def feedback
    if card.answer == guess
      "Correct!"
    else
      "Nope!"
    end
  end
end
