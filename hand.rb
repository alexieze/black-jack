require_relative 'deck'

class Hand

  attr_reader :cards

  def initialize
    @cards = []
    @deck = Deck.new
  end

  def take_card
    raise 'Карт достаточно' if full?
    @cards << @deck.card
  end

  def full?
    @cards.length >= 3
  end
end