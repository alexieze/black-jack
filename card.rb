class Card

  SUITS = %w(♡ ♧ ♢ ♤).freeze
  SIGNS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze

  attr_reader :value, :sign

  def initialize(value, sign)
    @value = value
    @sign = sign
  end
end