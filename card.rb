class Card

  SUITS = %w[+ < ^ <>].freeze
  SIGNS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze
  CARD_FORMAT = /^([2-9]|10|[JQKA])([+<^]|<>)$/

  attr_reader :value, :sign

  def initialize(value, sign)
    @value = value
    @sign = sign
    validate!
  end

  def validate!
    raise 'Неверны формат карты!' if sign !~ CARD_FORMAT
  end
end