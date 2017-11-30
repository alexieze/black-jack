require_relative 'player'
require_relative 'diller'
require_relative 'bank'

class Game

  attr_reader :bank, :player, :diller

  def initialize(name)
    @player = Player.new(name)
    @diller = Diller.new('Diller')
    @bank = Bank.new
    @money = 0
  end


  def giving_away_cards
    2.times { @player.hand.take_card }
    2.times { @diller.hand.take_card }
  end

  def result

  end


  def make_bet
    @money += @player.make_bet
    @money += @diller.make_bet
  end

  def giving_away_money
    @player.money = bank.money
    @diller.money = bank.money
  end
end