require_relative 'card'

class Deck

  attr_reader :deck

  def initialize
    @deck = self.create
  end

  def create
    deck = []
    Card::SUITS.each do |suit|
      Card::SIGNS.each { |sign| deck << Card.new(sign, suit) }
    end
    deck.sort_by! { rand }
  end

  def card
    deck.delete(deck.sample)
  end

end