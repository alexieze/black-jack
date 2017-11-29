require_relative 'deck'

class Hand

  def initialize
    @cards = []
    @deck = Deck.new
  end

  def take_card
    raise 'Карт достаточно' if is_full?
    @cards << @deck.card
  end

  def is_full?
    @cards.length >= 3
  end
end