class Deck

  SUITS = %w(♡ ♧ ♢ ♤).freeze
  CARDS = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze

  def create
    deck = []
    CARDS.each do |card|
      SUITS.each do |suit|
        value = card.to_i if card.to_i > 0
        value = 10 if card.to_i.zero?
        value = 11 if card == 'A'
        deck << { value: value, name: card + suit }
      end
    end
    deck.sort_by! { rand }
  end
end