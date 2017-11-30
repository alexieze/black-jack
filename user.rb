require_relative 'hand'

class User
  attr_accessor :money, :skip_step, :hand

  def initialize(name)
    @name = name
    @skip_step = false
    @money = 0
    @one_bet = 10
    @show_cards = false
    @hand = Hand.new
  end

  def skiped_step?
    skip_step
  end

  def make_bet
    if check_money?
      @money -= @one_bet
      @one_bet
    end
  end

  def check_money?
    @money >= 10
  end

end