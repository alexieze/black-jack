require_relative 'user'
class Diller < User

  def initialize(name)
    super(name)
  end

  def move
    puts hand.sum_points
    if hand.sum_points == 21
      self.open_cards = true
    elsif hand.sum_points >= 19 && hand.isset_ace && !self.open_cards?
      hand.take_card
    elsif hand.sum_points >= 15
      self.skip_step = true unless self.skipped_step? && hand.sum_points > 10
    elsif hand.sum_points < 15
      hand.take_card
    end
  end
end