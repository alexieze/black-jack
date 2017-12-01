require_relative 'player'
require_relative 'diller'
require_relative 'bank'

class Game

  attr_reader :bank, :player, :diller, :over

  def initialize(name)
    @player = Player.new(name)
    @diller = Diller.new('Diller')
    @bank = Bank.new
    @money = 0
    @over = false
  end


  def giving_away_cards
    2.times { @player.hand.take_card }
    2.times { @diller.hand.take_card }
  end

  def result
    winner = (player_winner && !draw)? @player : @diller
    loser = (!player_winner && !draw)? @player : @diller

    @over = true
    "Результаты игры: выиграл #{winner.name} со счетом #{winner.hand.sum_points} против своего опонента #{loser.name} счет которого #{loser.hand.sum_points}"
  end

  def player_winner
    @player.hand.sum_points > @diller.hand.sum_points && @player.hand.sum_points <= 21
  end

  def draw
    @player.hand.sum_points == @diller.hand.sum_points
  end

  def over?
    @over
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