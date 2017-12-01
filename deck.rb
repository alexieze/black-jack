require_relative 'card'

class Deck

  attr_reader :deck

  def initialize
    @deck = self.create
  end

  def create
    deck = []
    Card::SIGNS.each do |sign|
      sign_value = sign if sign.is_a? Integer
      sign_value = 10 if sign =~ /\w/i
      sign_value = 11 if sign == 'A'
      Card::SUITS.each { |suit| deck << Card.new(sign_value, sign.to_s + suit.to_s) }
    end
    deck.sort_by! { rand }
  end

  def card
    deck.delete(deck.sample)
  end

end