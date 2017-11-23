

class Game

  def initialize
    @player = Player.new('Albert')
    @diller = Diller.new('Diller')
    deck = Deck.new.create
    @hand = Hand.new(deck)
    @money = 0
  end

  def init
    giving_away_money
    giving_away_cards
    start
  end

  def start
    make_bet
    process_game
  end

  def process_game
    see_cards
    loop do

      break
    end
  end

  def see_cards
    puts 'Player cards '
    @player.see_cards
    puts 'Diller cards'
    @diller.see_cards
  end

  def giving_away_cards
    @player.take_cards(@hand.giving_away_card(2))
    @diller.take_cards(@hand.giving_away_card(2))
  end

  def make_bet
    @money += @player.make_bet
    @money += @diller.make_bet
  end

  def giving_away_money
    bank = Bank.new
    @player.money = bank.money
    @diller.money = bank.money
  end
end