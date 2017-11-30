require_relative 'user'
class Diller < User

  def initialize(name)
    super(name)
  end

  def move
    if hand.points == 21
      self.open_cards = true
    elsif hand.points >= 19 && hand.isset_ace && !self.open_cards?
      hand.take_card
    elsif points >= 15
      self.skip_step = true unless self.skipped_step? && points > 10
    elsif hand.points < 15
      hand.take_card
    end
  end
end