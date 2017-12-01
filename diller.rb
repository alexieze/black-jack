require_relative 'user'
class Diller < User

  def initialize(name)
    super(name)
  end

  def move
    if hand.sum_points == 21
      self.open_cards = true if !self.open_cards?
    elsif hand.sum_points >= 18 && !skipped_step?
      self.skip_step = true
    else
      hand.take_card
    end
  end
end