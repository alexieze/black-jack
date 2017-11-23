class Hand

  def initialize(deck)
    @deck = deck
  end

  def giving_away_card(count)
    @deck.sample(count).each { |value| @deck.delete(value)}
  end

  def giving_one_card
    giving_away_card(1)
  end
end