

class Game

  attr_reader :bank, :player, :diller
  attr_accessor :command

  def initialize(name)
    @player = Player.new(name)
    @diller = Diller.new('Diller')
    @bank = Bank.new
    @money = 0
  end


  def started?

  end

  def round
    giving_away_money
    make_bet
    2.times { @player.hand.take_card }
    2.times { @diller.hand.take_card }
    @player.move(command)
    #break if @player.open_cards
    @diller.move
    # loop do
    #   @player.move(command)
    #   break if @player.open_cards
    #   @diller.move
    # end
    # result
  end

  def open_cards

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