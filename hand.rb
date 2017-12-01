require_relative 'deck'

class Hand

  attr_reader :cards, :points

  def initialize
    @cards = []
    @deck = Deck.new
    @points = 0
  end

  def take_card
    raise 'Карт достаточно' if full?
    @cards << @deck.card
  end

  def full?
    @cards.length >= 3
  end

  def sum_points
    summ = 0
    @cards.each { |card | summ += card.value }
    @points = summ
    ace
    @points
  end

  def ace
    @points -= 10 if @points > 21 && @cards.any? { |card| card.value == 11 }
  end
end